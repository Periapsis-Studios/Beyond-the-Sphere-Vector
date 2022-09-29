extends Button


export var type: String
export var moduleName: String
export var portNum: int
var rotation

signal dockRequested(position)


func _ready():
	self.connect("pressed", self, "pressed")


func pressed():
	emit_signal("dockRequested", getPosition(), rotation, type)
	get_parent().get_parent().get_parent().selectedPort = self


func getPosition():
	rotation = abs(get_parent().rotation_degrees)
	print(rotation)
	rotation += Data.modules[moduleName]["portRot"][portNum]
	print(rotation)
	match fmod(rotation, 360.0):
		0.0:
			return get_parent().position + Data.modules[moduleName]["portPos"][portNum]
		90.0:
			return Vector2(
				get_parent().position.x - Data.modules[moduleName]["portPos"][portNum].y,
				get_parent().position.y + Data.modules[moduleName]["portPos"][portNum].x
			)
		180.0:
			return Vector2(
				get_parent().position.x - Data.modules[moduleName]["portPos"][portNum].x,
				get_parent().position.y - Data.modules[moduleName]["portPos"][portNum].y
			)
		270.0:
			return Vector2(
				get_parent().position.x + Data.modules[moduleName]["portPos"][portNum].y,
				get_parent().position.y - Data.modules[moduleName]["portPos"][portNum].x
			)
