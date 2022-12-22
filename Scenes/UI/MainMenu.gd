extends Control
class_name MainMenu



signal new_game



func _on_new_game_mouse_entered():
	$NewGame.text = "> " + tr("newGame")

func _on_new_game_mouse_exited():
	$NewGame.text = "newGame"
	


func _on_load_game_mouse_entered():
	$LoadGame.text = "> " + tr("loadGame")

func _on_load_game_mouse_exited():
	$LoadGame.text = "loadGame"



func _on_settings_mouse_entered():
	$Settings.text = "> " + tr("settings")

func _on_settings_mouse_exited():
	$Settings.text = "settings"



func _on_quit_mouse_entered():
	$Quit.text = "> " + tr("quit")

func _on_quit_mouse_exited():
	$Quit.text = "quit"



func _on_quit_pressed():
	get_tree().quit()



func _on_new_game_pressed():
	emit_signal("new_game")
