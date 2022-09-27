extends Node

var validCouples = {"RUS_PROBE": "RUS_DROGUE", "RUS_DROGUE": "RUS_PROBE"}
var saveName: String
var money: int
var science: int
var loading: bool
var gameRunning: bool = false
var difficulty: int = 1


var nodes = [
	{
		"Name": "Single-module",
		"Pos": Vector2(0, 0),
		"Unlocks": [
			"Soyuz",
			"Salyut",
			"Skylab",
			"Apollo"
		],
		"Cost": 0,
		"Requires": -1,
		"Unlocked": true
	},
	{
		"Name": "Basic branching",
		"Pos": Vector2(2, 0),
		"Unlocks": [
			"OWS node",
			"Russian node"
		],
		"Cost": 5,
		"Requires": 0,
		"Unlocked": false
	},
	{
		"Name": "Basic adapters",
		"Pos": Vector2(2, -2),
		"Unlocks": [
			"ASTP Adapter"
		],
		"Cost": 10,
		"Requires": 0,
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


var modules = {
	"Soyuz": soyuz,
	"Salyut": salyut1
}
var unlockedModules = [
	"Soyuz",
	"Salyut"
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
		"nodes": nodes
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
			"ports": module[0].ports
		}
		saveFile.store_line(to_json(module_dict))
	saveFile.close()
	
	
func loadData(name: String):
	var dataFile = File.new()
	if not dataFile.file_exists("user://saves/" + name + "/data.json"):
		return 1
	
	dataFile.open("user://saves/" + name + "/data.json", File.READ)
	while dataFile.get_position() < dataFile.get_len():
		var data = parse_json(dataFile.get_line())
		
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
	
	
func loadContracts():
	var file = File.new()
	if not file.file_exists("user://saves/" + saveName + "/contracts.json"):
		return 1
	
	file.open("user://saves/" + name + "/contracts.json", File.READ)
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
		for port in stationLine["ports"]:
			moduleInstance.ports[int(port)] = stationLine["ports"][port]
		Station.dockedModules.append([moduleInstance, stationLine["name"]])
	stationFile.close()
	loading = false
	gameRunning = true
