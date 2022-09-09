extends OptionButton


onready var dropdown = $ModuleDropdown


# Called when the node enters the scene tree for the first time.
func _ready():
	var i: int = 0
	for module in Data.unlockedModules:
		self.add_item(module, i)
		i += 1


func _on_OptionButton_item_selected(index):
	var option: String = items[index]
	$ModulePreview.texture = load("res://Textures/ModulePreviews/" + option + ".png")
