extends Node


var dockedModules: Array = []


func dockModule(moduleName: String, moduleInstance: Node):
	dockedModules.append([moduleInstance, moduleName])
	Data.money -= Data.modules[moduleName]["cost"] * Data.difficulty
	get_parent().get_node("Control").get_child(0).updateCurrency()
	match moduleName:
		"Salyut":
			Contracts.unlockedTypes.append("spyPhotos")
		"Skylab":
			Contracts.unlockedTypes.append("solarObservation")
	

func undockModule(moduleInstance, modulePort, fromInstance, fromPort):
	for i in dockedModules.size():
		if dockedModules[i][0] == moduleInstance:
			dockedModules.remove(i)
			break
	fromInstance.ports[fromPort] = false
	fromInstance.dockedInstances.erase(moduleInstance)
	fromInstance.dockedNumbers.erase(modulePort)


func refundModule(name):
	Data.money += Data.modules[name]["cost"] * Data.difficulty
	get_parent().get_node("Control").get_child(0).updateCurrency()


func getModuleByPos(x, y):
	for module in dockedModules:
		if module[0].position == Vector2(x, y):
			return module
	return null
