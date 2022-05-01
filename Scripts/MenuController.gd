extends Control

onready var new_game = get_node("NewGame")
onready var load_game = get_node("LoadGame")
onready var settings = get_node("Settings")
onready var quit = get_node("Quit")

func _on_NewGame_pressed():
	get_tree().change_scene("res://Scenes/MainScene.tscn")

func _on_NewGame_mouse_entered():
	new_game.text = "> " + tr("newGame")


func _on_NewGame_mouse_exited():
	new_game.text = "newGame"


func _on_LoadGame_mouse_entered():
	load_game.text = "> " + tr("loadGame")


func _on_LoadGame_mouse_exited():
	load_game.text = "loadGame"


func _on_Settings_mouse_entered():
	settings.text = "> " + tr("settings")


func _on_Settings_mouse_exited():
	settings.text = "settings"


func _on_Quit_mouse_entered():
	quit.text = "> " + tr("quit")


func _on_Quit_mouse_exited():
	quit.text = "quit"


func _on_Quit_pressed():
	get_tree().quit()


