extends TextureButton


var number: int

signal press(node)


func _on_TextureRect_pressed():
	emit_signal("press", number)
