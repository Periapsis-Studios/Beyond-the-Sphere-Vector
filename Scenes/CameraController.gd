extends Camera2D

onready var BuildButton = $BuildMenu/BuildMenu/BuildButton
onready var CancelButton = $BuildMenu/BuildMenu/CancelBuildButton
onready var AcceptButton = $BuildMenu/BuildMenu/AcceptButton
onready var Modules = $BuildMenu/BuildMenu/Modules
onready var Station = get_parent().get_node("Station")
var selected_docking_port
var building :bool = false
var temp_module

func build_menu(docking_port):
	if BuildButton.visible==false and building:
		selected_docking_port=docking_port

func _process(delta):
	print(selected_docking_port)
	if selected_docking_port!=null and is_instance_valid(temp_module):
		temp_module.rotation = (selected_docking_port.global_rotation-deg2rad(180))
		temp_module.global_position=selected_docking_port.global_position-temp_module.used_docking_port.position.rotated(temp_module.rotation)

func _input(event):
	if event.is_action_pressed("zoom_in"):
		self.zoom.x -= 0.1
		self.zoom.y -= 0.1
		
	if event.is_action_pressed("zoom_out"):
		self.zoom.x += 0.1
		self.zoom.y += 0.1

func _on_BuildButton_pressed():
	if !building:
		building=true
		BuildButton.visible=false
		CancelButton.visible=true
		Modules.visible=true


func _on_CancelBuildButton_pressed():
	building=false
	BuildButton.visible=true
	CancelButton.visible=false
	Modules.visible=false

func _on_Soyuz_pressed():
	Modules.visible=false
	CancelButton.visible=false
	var soyuz_scene = load("res://Scenes/Modules/Soyuz.tscn")
	var soyuz = soyuz_scene.instance()
	soyuz.global_position=Vector2(1000,0)
	soyuz.disabled=false
	add_child(soyuz)
	soyuz.disabled=true
	temp_module=soyuz
	temp_module.modulate.a=0.7
	AcceptButton.visible=true


func _on_AcceptButton_pressed():
	if selected_docking_port!=null:
		building=false
		temp_module.disabled=false
		temp_module.modulate.a=1
		remove_child(temp_module)
		Station.add_child(temp_module)
		temp_module.global_position = selected_docking_port.global_position+Vector2(1000,0).rotated(selected_docking_port.rotation)
		temp_module.target_position=selected_docking_port.global_position
		selected_docking_port=null
		BuildButton.visible=true
		AcceptButton.visible=false
