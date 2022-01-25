extends Camera2D

onready var BuildButton = $BuildMenu/BuildMenu/BuildButton
onready var CancelButton = $BuildMenu/BuildMenu/CancelBuildButton
onready var AcceptButton = $BuildMenu/BuildMenu/AcceptButton
onready var Modules = $BuildMenu/BuildMenu/Modules
onready var Station = get_parent().get_node("Station")
export(PackedScene) var module_button_scene
var selected_docking_port
var selected_docking_port_type
var building :bool = false
var temp_module
var temp_module_collision

func build_menu(docking_port):
	if BuildButton.visible==false and building:
		selected_docking_port=docking_port
		selected_docking_port_type=docking_port.port_type

func _process(delta):
	calculate_temp_module_position()

func calculate_temp_module_position():
	if selected_docking_port!=null and is_instance_valid(temp_module):
		temp_module.rotation = (selected_docking_port.global_rotation-deg2rad(180))
		temp_module.rotation-=temp_module.used_docking_port.rotation
		temp_module.global_position=selected_docking_port.global_position+(temp_module.global_position-temp_module.used_docking_port.global_position)
		if Input.is_action_just_pressed("switch_port"):
			if temp_module.docking_port_number == temp_module.docking_ports.size()-1:
				temp_module.docking_port_number=0
			else:
				temp_module.docking_port_number+=1
			temp_module.used_docking_port=temp_module.docking_ports[temp_module.docking_port_number]
		if temp_module_collision.get_overlapping_areas() != []:
			temp_module.modulate=Color(1,0,0,0.7)
		else:
			temp_module.modulate=Color(1,1,1,0.7)

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
		for module in Modules.get_children(): #Clearing Buttons
			module.queue_free()
		var id :int = 0
		for module in Data.modules: #Adding Buttons
			var button_scene = module_button_scene.instance()
			button_scene.id = id
			Modules.add_child(button_scene)
			id+=1

func _on_CancelBuildButton_pressed():
	building=false
	BuildButton.visible=true
	CancelButton.visible=false
	Modules.visible=false

func module_button_pressed(id :int):
	Modules.visible=false
	CancelButton.visible=false
	var soyuz_scene = load("res://Scenes/Modules/%s.tscn" % Data.modules[id])
	var soyuz = soyuz_scene.instance()
	soyuz.global_position=Vector2(99999,0)
	soyuz.disabled=false
	add_child(soyuz)
	soyuz.disabled=true
	temp_module=soyuz
	temp_module.modulate.a=0.7
	AcceptButton.visible=true
	temp_module_collision=temp_module.get_node("CollisionArea")

func _on_AcceptButton_pressed():
	if selected_docking_port!=null and temp_module_collision.get_overlapping_areas() == []:
		if temp_module.used_docking_port.port_type != selected_docking_port_type:
			return
		building=false
		temp_module.disabled=false
		temp_module.modulate.a=1
		remove_child(temp_module)
		Station.add_child(temp_module)
		temp_module.global_position = selected_docking_port.global_position+(Vector2(1000,0)).rotated(selected_docking_port.global_rotation)
		temp_module.global_position -= temp_module.used_docking_port.position.rotated(temp_module.rotation)
		temp_module.target_position=selected_docking_port.global_position
		temp_module.target_port=selected_docking_port
		selected_docking_port=null
		BuildButton.visible=true
		AcceptButton.visible=false

func _on_CancelButton_pressed():
	if is_instance_valid(temp_module):
		temp_module.queue_free()
	selected_docking_port=null
	BuildButton.visible=true
	AcceptButton.visible=false
	building=false
