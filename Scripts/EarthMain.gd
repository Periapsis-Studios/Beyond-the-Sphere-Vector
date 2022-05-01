extends Control


var saveName: String
var money: int
var science: int
var unlockedModules = {}
var dockedModules = {}

func dock(targetPos: Vector2, targetRot: int, targetPortType: String, module: String, port: int):
	var moduleObject = load("res://Scenes/Modules/" + module + ".tscn")
	var portType = moduleObject.portTypes.port
	var isCorrectType: bool = Data.validCouples.targetPortType == portType
	
	# TODO: Replace with isCorrectType
	if true:
		var tween = $Tween
		var camera = $Camera2D
		var moduleInstance = moduleObject.instance()
		camera.add_child(moduleInstance)	
		
