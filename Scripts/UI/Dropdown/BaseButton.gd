extends Button

var open: bool = false
var dropButton = preload("res://Scenes/UI/DropButton.tscn")
onready var options = get_parent().options
onready var scrollbar = get_node("../VScrollBar")


func _ready():
	self.text = get_parent().defaultOption
	

func on_press():
	if not open:
		showPopup()
	else:
		hidePopup(self.text)


func showPopup():
	scrollbar.visible = true
	scrollbar.max_value = options.size()
	scrollbar.value = 0
	add_options(0, 9)
	open = true
	
	
func add_options(start: int, end: int):
	var pos = Vector2(self.rect_position.x, self.rect_position.y + 60)
	for i in range(start, end):
		if i >= options.size():
			break
			
		var instance = dropButton.instance()
		get_parent().get_node("Popup").add_child(instance)
		instance.text = options[i]
		instance.rect_position = pos
		
		pos.y += 60
		i += 1
	
	
func hidePopup(name: String):
	scrollbar.visible = false
	for child in get_parent().get_node("Popup").get_children():
		get_parent().get_node("Popup").remove_child(child)
		
	if not self.text == name:
		get_parent().changeOption(name)
	
	self.text = name
	open = false




func scroll(value):
	if value + 8 >= options.size():
		return
	
	for child in get_parent().get_node("Popup").get_children():
		get_parent().get_node("Popup").remove_child(child)
		
	add_options(value, value + 9)
		
