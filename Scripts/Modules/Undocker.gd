extends Button




func _on_Undocker_pressed():
	Station.undockModule(get_parent())
	get_parent().queue_free()
