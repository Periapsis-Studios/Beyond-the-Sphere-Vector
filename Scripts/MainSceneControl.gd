extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var menu_scene = load("res://Scenes/MainMenu.tscn")
	
	var menu_node = menu_scene.instance()
	add_child(menu_node)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func dock(port_pos, port_dir, module_path):
	var module_scene = load(module_path)
	
	var module_node = module_scene.instance()
	add_child(module_node)
	
	var port_type = module_scene.getPortType()
