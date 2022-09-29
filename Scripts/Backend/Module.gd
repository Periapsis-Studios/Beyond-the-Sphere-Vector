extends Node


var ports: Dictionary
export var portsNo: int


func _ready():
	for i in portsNo:
		print(i)
		ports[i] = false
