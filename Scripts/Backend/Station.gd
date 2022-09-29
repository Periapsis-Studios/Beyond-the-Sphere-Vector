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
	

func undockModule(moduleInstance, modulePort, fromInstance, fromPort):
	dockedModules.erase(moduleInstance)
	fromInstance.ports[fromPort] = false
	fromInstance.dockedInstances.erase(moduleInstance)
	fromInstance.dockedNumbers.erase(modulePort)


func refundModule(name):
	Data.money += Data.modules[name]["cost"] * Data.difficulty
	get_parent().get_node("Control").get_child(0).updateCurrency()
