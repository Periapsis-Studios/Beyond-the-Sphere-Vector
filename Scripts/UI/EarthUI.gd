extends Control


var isBuildActive: bool = false
var windowInstance: Control
var pos: Vector2
var rot: int
var targetType: String


func _on_BuildButton_pressed():
	if not isBuildActive:
		get_parent().startBuild()
		isBuildActive = true
	else:
		get_parent().endBuild()
		isBuildActive = false
		hideSelector()


func showSelector(position, rotation, type):
	pos = position
	rot = rotation
	targetType = type
	
	isBuildActive = true
	var windowScene = load("res://Scenes/UI/ModuleSelect.tscn")
	windowInstance = windowScene.instance()
	windowInstance.ready(type)
	
	get_parent().get_node("Control").add_child(windowInstance)
	
	windowInstance.connect("confirmed", self, "confirmSelection")


func hideSelector():
	isBuildActive = false
	
	if windowInstance == null:
		return
	
	windowInstance.queue_free()
	windowInstance = null


func confirmSelection(module, port):
	get_parent().dock(pos, rot, targetType, module, port)
	hideSelector()
