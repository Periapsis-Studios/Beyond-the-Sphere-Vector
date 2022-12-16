extends Node


var ports: Array
var dockedInstances: Array
var dockedNumbers: Array
var food: int
var water: int
var equipment: Array
var crew: int
export var canLaunchCrew: bool
export var needsCrew: bool
export var maxCrew: int
export var maxLoad: int
var maxFood: int = maxLoad / Data.packageWeight
var maxWater: int = maxLoad / Data.packageWeight
var maxEquipment: int = maxLoad / Data.packageWeight
export var portsNo: int
export var moduleName: String


func _ready():
	for i in portsNo:
		ports.append(false)
