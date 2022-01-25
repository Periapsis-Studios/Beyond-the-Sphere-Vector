extends Node2D

export(Data.DockingPorts) var port_type :int
var occupied = false

onready var player = get_parent().get_parent().get_parent().get_parent().get_node("Player")

func _on_TextureButton_pressed():
	var module = get_parent().get_parent()
	if !module.disabled and module.docked and !occupied:
		player.build_menu(self)
