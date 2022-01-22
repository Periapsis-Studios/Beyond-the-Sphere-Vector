extends Camera2D

onready var BuildMenu = $BuildMenu/BuildMenu
onready var Station = get_parent().get_node("Station")
var selected_docking_port


func build_menu(docking_port):
	if BuildMenu.visible==false:
		BuildMenu.visible=true
		selected_docking_port=docking_port
		BuildMenu.rect_position=docking_port.global_position*zoom.x

func _input(event):
	if event.is_action_pressed("zoom_in"):
		self.zoom.x -= 0.1
		self.zoom.y -= 0.1
		
	if event.is_action_pressed("zoom_out"):
		self.zoom.x += 0.1
		self.zoom.y += 0.1


func _on_Soyuz_pressed():
	var soyuz_scene = load("res://Scenes/Modules/Soyuz.tscn")
	var soyuz = soyuz_scene.instance()
	soyuz.target_position=selected_docking_port.position
	soyuz.position=selected_docking_port.position+Vector2(-1000,0).rotated(selected_docking_port.global_rotation)
	Station.add_child(soyuz)
