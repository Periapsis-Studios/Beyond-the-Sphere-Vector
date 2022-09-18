extends Node

var validCouples = {"RUS_PROBE": "RUS_DROGUE", "RUS_DROGUE": "RUS_PROBE"}
var saveName: String
var money: int
var science: int
var loading: bool


var soyuz = {
	"portTypes": {0: "RUS_PROBE"},
	"portPos": {0: Vector2(0, -930)},
	"portRot": {0: 0},
	"portNum": 1
}
var salyut1 = {
	"portTypes": {0: "RUS_DROGUE"},
	"portPos": {0: Vector2(0, -975)},
	"portRot": {0: 0},
	"portNum": 1
}


var modules = {
	"Soyuz": soyuz,
	"Salyut": salyut1
}
var unlockedModules = [
	"Soyuz",
	"Salyut"
]


func saveData():
	if not Directory.new().dir_exists("user://saves/" + saveName):
		Directory.new().make_dir("user://saves/" + saveName)
	var saveFile = File.new()
	saveFile.open("user://saves/" + saveName + "/data.json", File.WRITE)
	var data_dict = {
		"money": money,
		"science": science
	}
	saveFile.store_line(to_json(data_dict))
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
	dataFile.close()


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
			print(stationLine["ports"][port])
		Station.dockedModules.append([moduleInstance, stationLine["name"]])
	stationFile.close()
	loading = false
