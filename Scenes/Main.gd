extends Node2D
class_name Main

func move_camera(pos: Vector2) -> void:
	var camera_tween := get_tree().create_tween()
	camera_tween.tween_property($Camera2D, "position", pos, 1.5)
	await camera_tween.finished
	camera_tween.kill()



func _on_main_menu_new_game() -> void:
	$NewGame.visible = true
	await move_camera(Vector2(887, -750))
	$MainMenu.visible = false
