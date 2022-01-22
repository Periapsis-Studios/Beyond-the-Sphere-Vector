extends Node2D

export(Data.DockingPorts) var PortType :int
var occupied = false

func _on_TextureButton_pressed():
	get_tree().get_root().get_node("Player").build_menu(self)
