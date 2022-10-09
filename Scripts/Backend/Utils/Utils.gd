extends Node


func getCoordsAtCircle(original: Vector2, distance: float, angleDeg: float):
	var radians = deg_to_rad(angleDeg)
	var x: float = distance * cos(radians) + original.x
	var y: float = distance * sin(radians) + original.y
	return Vector2(y, -x)
	
	
func wait(seconds: float):
	var timer = Timer.new()
	timer.wait_time = seconds
	timer.one_shot = true
	self.add_child(timer)
	timer.start()
	await timer.timeout
	timer.queue_free()
	
	
func checkCollisionAt(object: Node2D, area: Area2D, position: Vector2, rotation: float):
	var orPosition = object.position
	var orRotation = object.rotation
	var orVisibility = object.visible
	
	object.position = position
	object.rotation = deg_to_rad(rotation)
	object.visible = false
	
	wait(0.1)
	var result = not area.get_overlapping_areas().is_empty()
	
	object.position = orPosition
	object.rotation = orRotation
	object.visible = orVisibility
	
	return result


func instance(path: String):
	return load(path).instantiate()


func followMouse(object: Node2D, mousePos: Vector2):
	object.position = mousePos
	
	
func roundToMultiple(n: float, multipleOf: float):
	return round(n / multipleOf) * multipleOf


func snapOnCircleLeft(degrees: float, snap: float):
	var rounded = roundToMultiple(degrees, snap)
	if rounded >= roundf(degrees):
		return rounded - snap
	if rounded < roundf(degrees):
		return rounded
		

func snapOnCircleRight(degrees: float, snap: float):
	var rounded = roundToMultiple(degrees, snap)
	if rounded > roundf(degrees):
		return rounded
	if rounded <= roundf(degrees):
		return rounded + snap
