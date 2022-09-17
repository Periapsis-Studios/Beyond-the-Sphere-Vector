extends Control


var portNum: int = 1
var maxPort: int

signal confirmed(module, port)


func ready(type):
	$ModuleDropdown.defaultOption = Data.unlockedModules[0]
	for module in Data.unlockedModules:
		if type == "ANY":
			$ModuleDropdown.options.append(module)
		elif Data.validCouples[type] in Data.modules[module]["portTypes"]:
			$ModuleDropdown.options.append(module)
	item_selected(Data.unlockedModules[0])


func item_selected(option):
	$ModulePreview.texture = load("res://Textures/ModulePreviews/" + option + ".png")
	portNum = 1
	maxPort = Data.modules[option]["portNum"]


func decreasePort():
	portNum -= 1
	if portNum == 0:
		portNum = maxPort
	
	$PortNum.text = "Port" + str(portNum)


func increasePort():
	portNum += 1
	if portNum > maxPort:
		portNum = 1
	
	$PortNum.text = "Port" + str(portNum)


func confirmPress():
	emit_signal("confirmed", $ModuleDropdown/BaseButton.text, portNum)
