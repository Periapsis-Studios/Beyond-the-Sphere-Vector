extends Node

const version = "0.1.2h1"
func _ready():
	print("Version: " + version)

var validCouples = {
	"RUS_PROBE": "RUS_DROGUE",
	"RUS_DROGUE": "RUS_PROBE",
	"US_PROBE": "US_DROGUE",
	"US_DROGUE": "US_PROBE",
	"APAS": "APAS"
}
var saveName: String
var money: int
var science: int
var loading: bool
var gameRunning: bool = false
var difficulty: int = 1
var tutorial: bool


var nodes = [
	{
		"Name": "singleModule",
		"Pos": Vector2(0, 0),
		"Unlocks": [
			"Soyuz",
			"Salyut",
			"Skylab",
			"Apollo",
			"Progress"
		],
		"Cost": 0,
		"Requires": -1,
		"Unlocked": true
	},
	{
		"Name": "branching",
		"Pos": Vector2(2, 0),
		"Unlocks": [
			"OWS Node",
			"Russian Node"
		],
		"Cost": 5,
		"Requires": 0,
		"Unlocked": false
	},
	{
		"Name": "adapters",
		"Pos": Vector2(2, -2),
		"Unlocks": [
			"Adapter"
		],
		"Cost": 10,
		"Requires": 0,
		"Unlocked": false
	},
	{
		"Name": "modularityEarly",
		"Pos": Vector2(4, -2),
		"Unlocks": [
			"Mir Core",
			"Kvant-1",
			"Kvant-2"
		],
		"Cost": 20,
		"Requires": 1,
		"Unlocked": false
	},
	{
		"Name": "leoFerry",
		"Pos": Vector2(4, 0),
		"Unlocks": [
			"Mir Adapter",
			"Space Shuttle",
			"Buran"
		],
		"Cost": 20,
		"Requires": 1,
		"Unlocked": false
	}
]


var soyuz = {
	"portTypes": {0: "RUS_PROBE"},
	"portPos": {0: Vector2(0, -930)},
	"portRot": {0: 0},
	"portNum": 1,
	"cost": 40_000_000
}
var salyut1 = {
	"portTypes": {0: "RUS_DROGUE"},
	"portPos": {0: Vector2(0, -975)},
	"portRot": {0: 0},
	"portNum": 1,
	"cost": 50_000_000
}
var skylab = {
	"portTypes": {0: "US_DROGUE"},
	"portPos": {0: Vector2(-6, -953)},
	"portRot": {0: 0},
	"portNum": 1,
	"cost": 190_000_000
}
var apollo = {
	"portTypes": {0: "US_PROBE"},
	"portPos": {0: Vector2(0, -512)},
	"portRot": {0: 0},
	"portNum": 1,
	"cost": 55_000_000
}
var adapter = {
	"portTypes": {0: "RUS_PROBE", 1: "US_PROBE"},
	"portPos": {0: Vector2(0, -920), 1: Vector2(0, -285)},
	"portRot": {0: 0, 1: 180},
	"portNum": 2,
	"cost": 50_000_000
}
var progress = {
	"portTypes": {0: "RUS_PROBE"},
	"portPos": {0: Vector2(0, -930)},
	"portRot": {0: 0},
	"portNum": 1,
	"cost": 40_000_000
}
var owsNode = {
	"portTypes": {0: "US_DROGUE", 1: "US_PROBE", 2: "US_DROGUE", 3: "US_DROGUE"},
	"portPos": {
		0: Vector2(0, -804),
		1: Vector2(0, -190),
		2: Vector2(-270, -247),
		3: Vector2(270, -247)
	},
	"portRot": {0: 0, 1: 180, 2: 90, 3: 270},
	"portNum": 4,
	"cost": 50_000_000
}
var rusNode = {
	"portTypes": {0: "RUS_DROGUE", 1: "RUS_DROGUE", 2: "RUS_PROBE", 3: "RUS_DROGUE"},
	"portPos": {
		0: Vector2(0, -930),
		1: Vector2(-710, -214),
		2: Vector2(0, 491),
		3: Vector2(710, -215)
	},
	"portRot": {0: 0, 1: 90, 2: 180, 3: 270},
	"portNum": 4,
	"cost": 40_000_000
}
var mirCore = {
	"portTypes": {0: "RUS_DROGUE", 1: "RUS_DROGUE", 2: "RUS_DROGUE", 3: "RUS_DROGUE"},
	"portPos": {
		0: Vector2(0, -930),
		1: Vector2(-709, -219),
		2: Vector2(709, -226),
		3: Vector2(0, -2334)
	},
	"portRot": {0: 0, 1: 90, 2: 270, 3: 180},
	"portNum": 4,
	"cost": 100_000_000
}
var kvant1 = {
	"portTypes": {0: "RUS_PROBE", 1: "RUS_DROGUE"},
	"portPos": {
		0: Vector2(0, -930),
		1: Vector2(0, -356)
	},
	"portRot": {0: 0, 1: 180},
	"portNum": 2,
	"cost": 70_000_000
}
var kvant2 = {
	"portTypes": {0: "RUS_PROBE"},
	"portPos": {0: Vector2(0, -1663)},
	"portRot": {0: 180},
	"portNum": 1,
	"cost": 80_000_000
}
var shuttle = {
	"portTypes": {0: "APAS"},
	"portPos": {0: Vector2(0, -911)},
	"portRot": {0: 0},
	"portNum": 1,
	"cost": 160_000_000
}
var buran = {
	"portTypes": {0: "APAS"},
	"portPos": {0: Vector2(0, -911)},
	"portRot": {0: 0},
	"portNum": 1,
	"cost": 200_000_000
}
var mirAdapter = {
	"portTypes": {0: "RUS_PROBE", 1: "APAS"},
	"portPos": {
		0: Vector2(0, -930),
		1: Vector2(0, 88)
	},
	"portRot": {0: 0, 1: 180},
	"portNum": 2,
	"cost": 40_000_000
}


var modules = {
	"Soyuz": soyuz,
	"Salyut": salyut1,
	"Skylab": skylab,
	"Apollo": apollo,
	"Adapter": adapter,
	"Progress": progress,
	"OWS Node": owsNode,
	"Russian Node": rusNode,
	"Mir Core": mirCore,
	"Kvant-1": kvant1,
	"Kvant-2": kvant2,
	"Space Shuttle": shuttle,
	"Buran": buran,
	"Mir Adapter": mirAdapter
}
var unlockedModules = [
	"Soyuz",
	"Salyut",
	"Skylab",
	"Apollo",
	"Progress"
]


func getMoneyString(money: int, accuracy: int):
	var moneyLength = str(money).length()
	var count = str(money).left((moneyLength - 1) % accuracy + 1)
	var moneySign = str(money).right((moneyLength - 1) % accuracy + 1).length()
	match moneySign:
		3, 4, 5: return [count, "k"]
		6, 7, 8: return [count, "M"]
		9, 10, 11: return [count, "G"]
		12, 13, 14: return [count, "T"]
		15, 16, 17: return [count, "P"]
		18, 19, 20: return [count, "E"]
		21, 22, 23: return [count, "Z"]
		24, 25, 26: return [count, "Y"]
		_: return [count, ""]


func saveData():
	if not Directory.new().dir_exists("user://saves/"):
		Directory.new().make_dir("user://saves/")
	if not Directory.new().dir_exists("user://saves/" + saveName):
		Directory.new().make_dir("user://saves/" + saveName)
	var saveFile = File.new()
	saveFile.open("user://saves/" + saveName + "/data.json", File.WRITE)
	var data_dict = {
		"money": money,
		"science": science,
		"difficulty": difficulty,
		"nodes": nodes,
		"version": version
	}
	saveFile.store_line(to_json(data_dict))
	saveFile.close()
	
	
func saveContracts():
	var saveFile = File.new()
	saveFile.open("user://saves/" + saveName + "/contracts.json", File.WRITE)
	for contract in Contracts.contracts:
		var dict = {
			"accepted": contract.accepted,
			"type": contract.type,
			"reward_cash": contract.rewardCash,
			"reward_science": contract.rewardSci,
			"length": contract.length,
			"completion": contract.completion
		}
		saveFile.store_line(to_json(dict))
	saveFile.close()
	
	
func saveStation():
	var saveFile = File.new()
	saveFile.open("user://saves/" + saveName + "/station.json", File.WRITE)
	for module in Station.dockedModules:
		var module_dict = {
			"name": module[1],
			"posx": module[0].position.x,
			"posy": module[0].position.y,
			"rot": module[0].rotation_degrees,
			"ports": module[0].ports,
			"dockedInstances": [],
			"dockedNumbers": module[0].dockedNumbers
		}
		for instance in module[0].dockedInstances:
			module_dict["dockedInstances"].append(
				{
					"posx": instance.position.x,
					"posy": instance.position.y
				}
			)
		saveFile.store_line(to_json(module_dict))
	saveFile.close()
	
	
func loadData(name: String):
	var dataFile = File.new()
	if not dataFile.file_exists("user://saves/" + name + "/data.json"):
		return 1
	
	dataFile.open("user://saves/" + name + "/data.json", File.READ)
	while dataFile.get_position() < dataFile.get_len():
		var data = parse_json(dataFile.get_line())
		
		if not data.has("version"):
			return 1
		
		saveName = name
		money = data["money"]
		science = data["science"]
		difficulty = data["difficulty"]
		nodes = data["nodes"]
		unlockedModules = []
		for node in nodes:
			node["Pos"].replace("(", "")
			node["Pos"].replace(")", "")
			var numbers = node["Pos"].split(", ")
			node["Pos"] = Vector2(int(numbers[0]), int(numbers[1]))
			if node["Unlocked"]:
				for module in node["Unlocks"]:
					unlockedModules.append(module)
		Contracts.lastContract = 0
		
	dataFile.close()
	return 0
	
	
func loadContracts():
	var file = File.new()
	if not file.file_exists("user://saves/" + saveName + "/contracts.json"):
		return 1
	
	file.open("user://saves/" + saveName + "/contracts.json", File.READ)
	while file.get_position() < file.get_len():
		var data = parse_json(file.get_line())
		
		Contracts.Contract.new(data["type"], data["reward_cash"], data["reward_science"], data["length"], data["completion"], data["accepted"])
	
	file.close()

func loadStation():
	loading = true
	get_tree().change_scene("res://Scenes/EarthMain.tscn")
	

func finishLoading():
	var stationFile = File.new()
	if not stationFile.file_exists("user://saves/" + saveName + "/station.json"):
		return 1
	
	stationFile.open("user://saves/" + saveName + "/station.json", File.READ)
	while stationFile.get_position() < stationFile.get_len():
		var stationLine: Dictionary = parse_json(stationFile.get_line())
		
		var moduleScene = load("res://Scenes/Modules/" + stationLine["name"] + ".tscn")
		var moduleInstance = moduleScene.instance()
		
		get_parent().get_node("Control").get_node("Camera2D").add_child(moduleInstance)
		moduleInstance.position = Vector2(stationLine["posx"], stationLine["posy"])
		moduleInstance.rotation_degrees = stationLine["rot"]
		moduleInstance.dockedInstances = stationLine["dockedInstances"]
		moduleInstance.dockedNumbers = stationLine["dockedNumbers"]
		for port in stationLine["ports"]:
			moduleInstance.ports.append(bool(port))
		Station.dockedModules.append([moduleInstance, stationLine["name"]])
	stationFile.close()
	for module in Station.dockedModules:
		var instances = module[0].dockedInstances
		module[0].dockedInstances = []
		for instance in instances:
			var result = Station.getModuleByPos(instance["posx"], instance["posy"])[0]
			module[0].dockedInstances.append(result)
	loading = false
	gameRunning = true


func isVersionHigher(a: String, b: String):
	var aArray = a.split(".")
	var bArray = b.split(".")
	var aVersion = [
		int(aArray[0]),
		int(aArray[1]),
		int(aArray[2].split("h")[0]),
		int(aArray[2].split("h")[1])
	]
	var bVersion = [
		int(bArray[0]),
		int(bArray[1]),
		int(bArray[2].split("h")[0]),
		int(bArray[2].split("h")[1])
	]
	if aVersion[0] > bVersion[0]:
		return true
	if aVersion[1] > bVersion[1]:
		return true
	if aVersion[2] > bVersion[2]:
		return true
	if aVersion[3] > bVersion[3]:
		return true
	return false
	
	
func isVersionEqual(a: String, b: String):
	var aArray = a.split(".")
	var bArray = b.split(".")
	var aVersion = [
		int(aArray[0]),
		int(aArray[1]),
		int(aArray[2].split("h")[0]),
		int(aArray[2].split("h")[1])
	]
	var bVersion = [
		int(bArray[0]),
		int(bArray[1]),
		int(bArray[2].split("h")[0]),
		int(bArray[2].split("h")[1])
	]
	if not aVersion[0] == bVersion[0]:
		return false
	if not aVersion[1] == bVersion[1]:
		return false
	if not aVersion[2] == bVersion[2]:
		return false
	if not aVersion[3] == bVersion[3]:
		return false
	return true
