extends Node2D

export(Data.DockingPorts) var port_type :int
var occupied = false

onready var player = get_parent().get_parent().get_parent().get_parent().get_node("Player")

func _on_TextureButton_pressed():
	# If the port you clicked is on a valid module that's docked, allow
	# the player to build on it
	var module = get_parent().get_parent()
	if !module.disabled and module.docked and !occupied:
		player.update_docking_ports(self)
