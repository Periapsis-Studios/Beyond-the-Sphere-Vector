extends Node2D

var speed :float = 50
export var docked:bool = false
export(Vector2) var target_position
onready var used_docking_port = $DockingPorts/DockingPort

var disabled=false

func _process(delta):
	if !docked and !disabled:
		var distance = global_position.distance_to(target_position+(used_docking_port.position.rotated(rotation-deg2rad(180))))
		print(distance)
		if distance>100:
			position+=Vector2(speed*delta,0).rotated(rotation)
		else:
			if distance<1:
				docked=true
				$DockTween.interpolate_property(
					self, "position",position,
					target_position+(used_docking_port.position.rotated(rotation-deg2rad(180))),1)
				$DockTween.start()
				return
			position+=Vector2(speed*delta*(distance/100),0).rotated(rotation)
