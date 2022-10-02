extends Node


var ports: Array
var dockedInstances: Array
var dockedNumbers: Array
export var portsNo: int
export var moduleName: String


func _ready():
	for i in portsNo:
		ports.append(false)
