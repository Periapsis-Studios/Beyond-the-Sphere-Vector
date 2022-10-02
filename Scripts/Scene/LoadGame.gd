extends Control


var selected: bool = false


func _ready():
	var dir = Directory.new()
	if not dir.dir_exists("user://saves/"):
		print(dir.make_dir("user://saves/"))
		
	dir.open("user://saves/")
	dir.list_dir_begin()

	var i = 0
	while true:
		var file = dir.get_next()
		if file == "":
			break
		elif dir.current_is_dir() and i >= 2:
			$Control.options.append(file)
		i += 1

	dir.list_dir_end()


func selected(name):
	$Delete.disabled = false
	selected = true
	if Data.loadData(name) == 1:
		disableLoad()
		return
		
	enableLoad()
		
	$Science.text = str(Data.science)
	if Data.difficulty == 0:
		$MoneyNum.text = "∞"
		$MoneySign.text = ""
		Data.unlockedModules = []
		for module in Data.modules:
			Data.unlockedModules.append(module)
		return
	$MoneyNum.text = Data.getMoneyString(Data.money, 6)[0]
	$MoneySign.text = Data.getMoneyString(Data.money, 6)[1]
		
		
func confirmed():
	if not selected:
		return
	Data.tutorial = false
	Data.loadContracts()
	Data.loadStation()


func backPressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")


func deletePressed():
	var dir = Directory.new()
	dir.remove("user://saves/" + Data.saveName + "/data.json")
	dir.remove("user://saves/" + Data.saveName + "/station.json")
	dir.remove("user://saves/" + Data.saveName + "/contracts.json")
	dir.remove("user://saves/" + Data.saveName)
	get_tree().change_scene("res://Scenes/LoadGame.tscn")


func disableLoad():
	$OldSave.visible = true
	$Confirm.disabled = true


func enableLoad():
	$OldSave.visible = false
	$Confirm.disabled = false
