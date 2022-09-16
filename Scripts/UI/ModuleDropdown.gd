extends Control


func preview_ready():
	for module in Data.unlockedModules:
		$ModuleDropdown.options.append(module)
	item_selected(Data.unlockedModules[0])


func item_selected(option):
	$ModulePreview.texture = load("res://Textures/ModulePreviews/" + option + ".png")
