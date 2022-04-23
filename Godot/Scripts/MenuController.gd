extends Control

onready var new_game = get_node("NewGame")
onready var load_game = get_node("LoadGame")
onready var settings = get_node("Settings")
onready var quit = get_node("Quit")

func _on_NewGame_pressed():
	get_tree().change_scene("res://Scenes/MainScene.tscn")

func _on_NewGame_mouse_entered():
	new_game.text = "> New Game"


func _on_NewGame_mouse_exited():
	new_game.text = "New Game"


func _on_LoadGame_mouse_entered():
	load_game.text = "> Load Game"


func _on_LoadGame_mouse_exited():
	load_game.text = "Load Game"


func _on_Settings_mouse_entered():
	settings.text = "> Settings"


func _on_Settings_mouse_exited():
	settings.text = "Settings"


func _on_Quit_mouse_entered():
	quit.text = "> Quit"


func _on_Quit_mouse_exited():
	quit.text = "Quit"


func _on_Quit_pressed():
	get_tree().quit()


