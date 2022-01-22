extends Node2D

# DISTANCE IN PIXELS, SPEED IN PIXELS PER SECOND
const DOCK_DIST = 2000
const SPEED = 100
const ACCEL = -10

var curr_scene
onready var camera = get_node("Camera2D")

var docking_collide = false

func _ready():
	launch()

func launch():
	dock(Vector2(0, 0), "up", "Russian", "res://Scenes/Prefabs/Soyuz.tscn", 1)

func dock(port_pos, port_dir, port_type, module_path, node):
	var module_scene = load(module_path)
	
	var module_node = module_scene.instance()
	camera.add_child(module_node)
	
	var module_port_type = module_node.getPortType()
	
	if [port_type == module_port_type]:
		if [port_dir == "up"]:
			var area = module_node.get_node("Area2D")
			var sprite = area.get_node("Sprite")
			var dock_pos = port_pos
			area.connect("area_entered", self, "setDockCollision")
			dock_pos.y -= module_node.getNode(node)
			
			sprite.position = dock_pos
			sprite.position.y -= 1000
			yield(get_tree().create_timer(0.01), "timeout")
			
			if !docking_collide:
				var brk_dis = brkDistance(SPEED, ACCEL)
				var braking = false
			
				sprite.rotation_degrees = 180
			
				while !braking:
					sprite.position.y += SPEED/100.0
					if (dock_pos.y - sprite.position.y <= brk_dis):
						braking = true
					yield(get_tree().create_timer(0.01), "timeout")
				
				var curr_speed = SPEED
				while curr_speed > 0:
					sprite.position.y += curr_speed/100
					curr_speed += ACCEL/100.0
					yield(get_tree().create_timer(0.01), "timeout")
			
				sprite.position = dock_pos
			else:
				print_debug("Collision detected")
				camera.remove_child(module_node)
			
			area.disconnect("area_entered", self, "setDockCollision")
		
		elif [port_dir == "right"]:
			pass
		
		elif [port_dir == "down"]:
			pass
		
		elif [port_dir == "left"]:
			pass
	
func brkDistance(speed, accel):
	return (0 - pow(speed, 2)) / (2 * accel)

func addSoyuz():
	var soyuz_scene = load("res://Scenes/Prefabs/Soyuz.tscn")
	
	var soyuz_node = soyuz_scene.instance()
	add_child(soyuz_node)

func setDockCollision(node):
	docking_collide = true
