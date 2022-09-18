extends Control


func _ready():
	$LineEdit.text = tr("name")


func _on_Confirm_pressed():
	Data.saveName = $LineEdit.text
	get_tree().change_scene("res://Scenes/EarthMain.tscn")
