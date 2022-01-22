extends Node2D

export(Data.DockingPorts) var PortType :int
var occupied = false

onready var player = get_parent().get_parent().get_parent().get_parent().get_node("Player")

func _on_TextureButton_pressed():
	player.build_menu(self)
