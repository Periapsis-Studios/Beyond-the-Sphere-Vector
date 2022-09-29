extends Control


var portNum: int = 1
var maxPort: int
var targetType: String
var currentOption: String

signal confirmed(module, port)


func ready(type):
	targetType = type
	for module in Data.unlockedModules:
		if type == "ANY":
			$ModuleDropdown.options.append(module)
		else:
			for port in Data.modules[module]["portTypes"]:
				if Data.modules[module]["portTypes"][port] == Data.validCouples[type]:
					$ModuleDropdown.options.append(module)
					break
	$ModuleDropdown.defaultOption = $ModuleDropdown.options[0]
	$ModuleDropdown/BaseButton._ready()
	item_selected($ModuleDropdown.options[0])


func item_selected(option):
	currentOption = option
	$ModulePreview.texture = load("res://Textures/ModulePreviews/" + option + ".png")
	maxPort = Data.modules[option]["portNum"]
	portNum = 0
	increasePort()
	updateCost(option)


func decreasePort():
	portNum -= 1
	if portNum == 0:
		portNum = maxPort
	if Data.validCouples[Data.modules[currentOption]["portTypes"][portNum - 1]] != targetType and not targetType == "ANY":
		decreasePort()
	
	$PortNum.text = "Port " + str(portNum)


func increasePort():
	portNum += 1
	if portNum > maxPort:
		portNum = 1
	if Data.validCouples[Data.modules[currentOption]["portTypes"][portNum - 1]] != targetType and not targetType == "ANY":
		increasePort()
	
	$PortNum.text = "Port " + str(portNum)


func confirmPress():
	emit_signal("confirmed", $ModuleDropdown/BaseButton.text, portNum - 1)



func updateCost(moduleName: String):
	$Cost.text = Data.getMoneyString(Data.modules[moduleName]["cost"] * Data.difficulty, 3)[0] + Data.getMoneyString(Data.modules[moduleName]["cost"] * Data.difficulty, 3)[1] + "$"
	if Data.modules[moduleName]["cost"] * Data.difficulty > Data.money:
		$Confirm.disabled = true
	else:
		$Confirm.disabled = false	
	
