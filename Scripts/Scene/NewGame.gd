extends Control


func _ready():
	$LineEdit.text = tr("name")


func _on_Confirm_pressed():
	Station.dockedModules = []
	Data.saveName = $LineEdit.text
	match $Control/BaseButton.text:
		"easy":
			Data.difficulty = 1
			Data.money = 300_000_000
		"normal": 
			Data.difficulty = 2
			Data.money = 300_000_000
		"hard": 
			Data.difficulty = 3
			Data.money = 300_000_000
		"sandbox":
			Data.difficulty = 0
			Data.unlockedModules = []
			for module in Data.modules:
				Data.unlockedModules.append(module)
	Data.tutorial = $CheckButton.pressed
	get_tree().change_scene("res://Scenes/EarthMain.tscn")


func backPressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
