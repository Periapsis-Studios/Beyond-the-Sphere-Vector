extends Node


var dockedModules: Array = []


func dockModule(moduleName: String, moduleInstance: Node):
	dockedModules.append([moduleInstance, moduleName])
