extends Node2D

var speed :float = 50
export var docked:bool = false
export(Vector2) var target_position
onready var used_docking_port = $DockingPorts/DockingPort
var docking_port_number :int = 0
onready var docking_ports = $DockingPorts.get_children()

var disabled=false

func _process(delta):
	if !docked and !disabled:
		var distance = used_docking_port.global_position.distance_to(target_position)
		if distance>150:
			print(used_docking_port.global_position.angle_to_point(target_position)-deg2rad(180)-used_docking_port.rotation)
			rotation=used_docking_port.global_position.angle_to_point(target_position)-deg2rad(180)-used_docking_port.rotation
		if distance>100:
			position+=Vector2(speed*delta,0).rotated(rotation+used_docking_port.rotation)
		else:
			if distance<2:
				docked=true
				$DockTween.interpolate_property(
					self, "position",position,
					target_position+(global_position-used_docking_port.global_position),2)
				$DockTween.start()
				return
			position+=Vector2(speed*delta*(distance/100),0).rotated(rotation+used_docking_port.rotation)
