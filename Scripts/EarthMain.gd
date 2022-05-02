extends Control


var saveName: String
var money: int
var science: int
var unlockedModules = {}
var dockedModules = {}

func _ready():
	dock(Vector2(0, 0), 0, "RUS_PROBE", "Soyuz", 1)

func dock(targetPos: Vector2, targetRot: int, targetPortType: String, module: String, port: int):
	var moduleObject = load("res://Scenes/Modules/" + module + ".tscn")
	var moduleInstance = moduleObject.instance()
	var moduleData = Data.modules[module]
	var portType = moduleData.portTypes[port]
	var isCorrectType: bool = Data.validCouples[targetPortType] == portType
	
	# TODO: Replace with isCorrectType
	if true:
		var tween: Tween = $Tween
		var camera = $Camera2D
		var area = moduleInstance.get_node("Area2D")
		
		camera.add_child(moduleInstance)
		match targetRot:
			0:
				moduleInstance.position.x = targetPos.x - moduleData.portPos[port].x
				moduleInstance.position.y = targetPos.y - moduleData.portPos[port].y
				moduleInstance.rotation = 0.0
				
				if area.get_overlapping_areas() == null:
					moduleInstance.position.y += 1000
					
					tween.interpolate_property(
						moduleInstance,
						"position:y",
						moduleInstance.position.y,
						moduleInstance.position.y - 1000,
						1,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
				else:
					camera.remove_child(moduleInstance)
					
			90:
				moduleInstance.position.x = targetPos.x - moduleObject.portPos.port.x
				moduleInstance.position.y = targetPos.y - moduleObject.portPos.port.y
				moduleInstance.rotation = 90.0
				
				if area.get_overlapping_areas() == null:
					moduleInstance.position.x += 1000
					
					tween.interpolate_property(
						moduleInstance,
						"position:x",
						moduleInstance.position.x,
						moduleInstance.position.x - 1000,
						1,
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
					moduleInstance.position.y -= 1000
					
					tween.interpolate_property(
						moduleInstance,
						"position:y",
						moduleInstance.position.y,
						moduleInstance.position.y + 1000,
						1,
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
					moduleInstance.position.x -= 1000
					
					tween.interpolate_property(
						moduleInstance,
						"position:x",
						moduleInstance.position.x,
						moduleInstance.position.x + 1000,
						1,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
				else:
					camera.remove_child(moduleInstance)
