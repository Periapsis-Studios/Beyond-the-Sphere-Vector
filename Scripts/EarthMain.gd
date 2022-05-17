extends Control


var saveName: String
var money: int
var science: int
var unlockedModules = {}
var dockedModules = {}
onready var camera = $Camera2D
onready var tween: Tween = $Tween
const DOCKSPEED = 5
const DOCKDIST = 5000
const MOVESPEED = 10

func _input(event):
	if event.is_action_pressed("zoom_in"):
		camera.zoom.x -= 1
		camera.zoom.y -= 1
		
	if event.is_action_pressed("zoom_out"):
		camera.zoom.x += 1
		camera.zoom.y += 1

		
func _process(delta):
	if Input.is_action_pressed("move_down"):
		move(0, MOVESPEED * camera.zoom.x, delta)
		
	if Input.is_action_pressed("move_up"):
		move(0, -MOVESPEED * camera.zoom.x, delta)
		
	if Input.is_action_pressed("move_left"):
		move(-MOVESPEED * camera.zoom.x, 0, delta)
		
	if Input.is_action_pressed("move_right"):
		move(MOVESPEED * camera.zoom.x, 0, delta)	
	

func _ready():
	dock(Vector2(0, 0), 0, "RUS_PROBE", "Soyuz", 1)
	
	
func move(amount_x: int, amount_y: int, delta: float):
	tween.interpolate_property(camera, "offset", camera.offset, Vector2(camera.offset.x + amount_x, camera.offset.y + amount_y), delta)
	tween.start()
	

func dock(targetPos: Vector2, targetRot: int, targetPortType: String, module: String, port: int):
	var moduleObject = load("res://Scenes/Modules/" + module + ".tscn")
	var moduleInstance = moduleObject.instance()
	var moduleData = Data.modules[module]
	var portType = moduleData.portTypes[port]
	var isCorrectType: bool = Data.validCouples[targetPortType] == portType
	
	# TODO: Replace with isCorrectType
	if true:
		print("Entered dock if")
		
		var camera = $Camera2D
		var area = moduleInstance.get_node("Area2D")
		
		camera.add_child(moduleInstance)
		match targetRot:
			0:
				print("Entered match 0")
				moduleInstance.position.x = targetPos.x - moduleData.portPos[port].x
				moduleInstance.position.y = targetPos.y - moduleData.portPos[port].y
				moduleInstance.rotation = 0.0
				
				if area.get_overlapping_areas().empty():
					print("Entered docking seq")
					moduleInstance.position.y += DOCKDIST
					
					tween.interpolate_property(
						moduleInstance,
						"position:y",
						moduleInstance.position.y,
						moduleInstance.position.y - DOCKDIST,
						DOCKSPEED,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
				else:
					print("Entered else")
					camera.remove_child(moduleInstance)
					
			90:
				moduleInstance.position.x = targetPos.x - moduleObject.portPos.port.x
				moduleInstance.position.y = targetPos.y - moduleObject.portPos.port.y
				moduleInstance.rotation = 90.0
				
				if area.get_overlapping_areas() == null:
					moduleInstance.position.x += DOCKDIST
					
					tween.interpolate_property(
						moduleInstance,
						"position:x",
						moduleInstance.position.x,
						moduleInstance.position.x - DOCKDIST,
						DOCKSPEED,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
				else:
					camera.remove_child(moduleInstance)
					
			180:
				moduleInstance.position.x = targetPos.x - moduleObject.portPos.port.x
				moduleInstance.position.y = targetPos.y - moduleObject.portPos.port.y
				moduleInstance.rotation = 180.0
				
				if area.get_overlapping_areas() == null:
					moduleInstance.position.y -= DOCKDIST
					
					tween.interpolate_property(
						moduleInstance,
						"position:y",
						moduleInstance.position.y,
						moduleInstance.position.y + DOCKDIST,
						DOCKSPEED,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
				else:
					camera.remove_child(moduleInstance)
					
			270:
				moduleInstance.position.x = targetPos.x - moduleObject.portPos.port.x
				moduleInstance.position.y = targetPos.y - moduleObject.portPos.port.y
				moduleInstance.rotation = 270.0
				
				if area.get_overlapping_areas() == null:
					moduleInstance.position.x -= DOCKDIST
					
					tween.interpolate_property(
						moduleInstance,
						"position:x",
						moduleInstance.position.x,
						moduleInstance.position.x + DOCKDIST,
						DOCKSPEED,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
				else:
					camera.remove_child(moduleInstance)
