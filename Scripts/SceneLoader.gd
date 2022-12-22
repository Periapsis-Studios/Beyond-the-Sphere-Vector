extends Node
	
func change_scene(path: String, callback: Callable) -> void:
	get_tree().change_scene_to_file("res://Scenes/LoadingScreen.tscn")
	var scene = load(path).instantiate()
	callback.call(scene)
	get_tree().change_scene_to_packed(scene)
