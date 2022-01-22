extends Node2D

export var docked:bool = false
export var built:bool = false

# DISTANCE IN PIXELS, SPEED IN PIXELS PER SECOND
const DOCK_DIST = 2000
const SPEED = 100
const ACCEL = -10
export(Vector2) var target_position

func _ready():
	look_at(target_position)

func _process(delta):
	if !docked and built:
		dock(delta)

func dock(delta:float):
	var braking = false
	while !braking:
		position += Vector2(SPEED/100.0*delta,0).rotated(rotation)
		if (position.distance_to(target_position)<50):
			braking = true
	var tween = get_node("BrakingTween")
	tween.interpolate_property(self, "position",
		position, target_position, 2,
		Tween.TRANS_LINEAR)
	tween.start()

func _on_BrakingTween_tween_completed(object, key):
	docked=true
