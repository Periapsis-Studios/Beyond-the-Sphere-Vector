extends Control



func _on_Resume_pressed():
	self.queue_free()


func _on_Save_pressed():
	Data.saveData()
	Data.saveStation()
	Data.saveContracts()
	self.queue_free()


func _on_Menu_pressed():
	get_tree().change_scene("res://Scenes/MainMenu.tscn")
	Data.gameRunning = false
