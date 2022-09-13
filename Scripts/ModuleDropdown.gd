extends Control


func preview_ready():
	var i: int = 0
	for module in Data.unlockedModules:
		$ModuleDropdown.add_item(module, i)
		i += 1
	_on_ModuleDropdown_item_selected(0)


func _on_ModuleDropdown_item_selected(index):
	var option = $ModuleDropdown.items[index * 5]
	print($ModuleDropdown.items)
	$ModulePreview.texture = load("res://Textures/ModulePreviews/" + option + ".png")
