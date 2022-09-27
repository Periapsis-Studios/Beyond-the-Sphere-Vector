extends Node


var dockedModules: Array = []


func dockModule(moduleName: String, moduleInstance: Node):
	dockedModules.append([moduleInstance, moduleName])
	Data.money -= Data.modules[moduleName]["cost"] * Data.difficulty
	get_parent().get_node("Control").get_child(0).updateCurrency()
	match moduleName:
		"Salyut":
			Contracts.unlockedTypes.append("Spy Photography")
		"Skylab":
			Contracts.unlockedTypes.append("Solar Observation")
	
