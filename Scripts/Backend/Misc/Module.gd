extends Node2D


@export var moduleName: String
@export var portTypes: Array[String]
@export var portPositions: Array[Vector2]
@export var portRotations: Array[float]
var id: int
var dockedIDs: Array[int]
var ports: Array[bool]


func dock(targetPos: Vector2, targetRot: float, port: int):
	var portPos = portPositions[port].rotated(deg_to_rad(targetRot + 180.0))
	self.rotation = deg_to_rad(targetRot + 180.0 + portRotations[port])
	self.position = Utils.getCoordsAtCircle(targetPos, DockData.dockDistance, targetRot) + portPos
	print(self.position)
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", targetPos + portPos, DockData.dockLength)
	await Utils.wait(5.0)
	print(self.position)
