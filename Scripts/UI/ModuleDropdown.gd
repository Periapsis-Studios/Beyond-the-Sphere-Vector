extends Control


var portNum: int = 1
var maxPort: int

signal confirmed(module, port)


func ready(type):
	for module in Data.unlockedModules:
		if type == "ANY":
			$ModuleDropdown.options.append(module)
		else:
			for port in Data.modules[module]["portTypes"]:
				if Data.modules[module]["portTypes"][port] == Data.validCouples[type]:
					$ModuleDropdown.options.append(module)
	$ModuleDropdown.defaultOption = $ModuleDropdown.options[0]
	item_selected($ModuleDropdown.options[0])


func item_selected(option):
	$ModulePreview.texture = load("res://Textures/ModulePreviews/" + option + ".png")
	portNum = 1
	maxPort = Data.modules[option]["portNum"] + 1
	updateCost(option)


func decreasePort():
	portNum -= 1
	if portNum == 0:
		portNum = maxPort
	
	$PortNum.text = "Port " + str(portNum)


func increasePort():
	portNum += 1
	if portNum > maxPort:
		portNum = 1
	
	$PortNum.text = "Port " + str(portNum)


func confirmPress():
	emit_signal("confirmed", $ModuleDropdown/BaseButton.text, portNum - 1)



func updateCost(moduleName: String):
	$Cost.text = Data.getMoneyString(Data.modules[moduleName]["cost"] * Data.difficulty, 3)[0] + Data.getMoneyString(Data.modules[moduleName]["cost"] * Data.difficulty, 3)[1] + "$"
	if Data.modules[moduleName]["cost"] * Data.difficulty > Data.money:
		$Confirm.disabled = true
	else:
		$Confirm.disabled = false	
	
