extends Control


var isBuildActive: bool = false


func _ready():
	pass


func _on_BuildButton_pressed():
	if isBuildActive:
		return
	
	isBuildActive = true
	var windowScene = load("res://Scenes/ModuleSelect.tscn")
	var windowInstance = windowScene.instance()
	
	self.add_child(windowInstance)
