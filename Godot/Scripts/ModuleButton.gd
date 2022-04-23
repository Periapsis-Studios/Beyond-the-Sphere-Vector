extends VBoxContainer

var id :int

func _ready():
	$Button.text=Data.modules[id]

func _on_Button_pressed():
	# Tells the player what button he pressed
	get_parent().get_parent().get_parent().get_parent().module_button_pressed(id)
