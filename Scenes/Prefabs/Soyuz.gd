extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

static func getPortType():
	return "Russian"

static func getNode(node):
	if [node == 1]:
		return 56.5
	else:
		printerr("Failed while getting Soyuz node with number " + node)
		return -1
