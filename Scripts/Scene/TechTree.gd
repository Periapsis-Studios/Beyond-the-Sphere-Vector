extends Control


var instances: Dictionary
var selected: String
var selectedNum: int


func _ready():
	for module in get_parent().get_parent().get_node("Camera2D").get_children():
		module.visible = false
	for node in Data.nodes:
		var nodeInstance = load("res://Scenes/UI/TechNode.tscn").instance()
		self.add_child(nodeInstance)
		instances[node["Name"]] = nodeInstance
		nodeInstance.rect_position = getCoordsFromNode(node["Pos"]) - Vector2(0, 300)
		nodeInstance.get_node("Name").text = node["Name"]
		nodeInstance.get_node("Label").text = str(node["Cost"])
		nodeInstance.get_node("TextureRect").number = Data.nodes.find(node)
		nodeInstance.get_node("TextureRect").connect("press", self, "onSelect")
		if node["Unlocked"]:
			nodeInstance.get_node("TextureRect").disabled = true
		if node["Requires"] == -1:
			continue
			
		connectNodes(node["Pos"], Data.nodes[node["Requires"]]["Pos"] + Vector2(1, 0))


func _on_TextureButton_pressed():
	get_parent().showUI()
	for module in get_parent().get_parent().get_node("Camera2D").get_children():
		module.visible = true
	self.queue_free()


func getCoordsFromNode(coords: Vector2):
	return Vector2(
		coords.x * 1024,
		coords.y * 600
	)


func connectNodes(a: Vector2, b: Vector2):
	var line = Line2D.new()
	self.add_child(line)
	line.position = getCoordsFromNode(a)
	line.add_point(Vector2(0, 0))
	line.add_point(getCoordsFromNode(b) - line.position)
	line.default_color = Color(1, 1, 1, 1)


func onSelect(nodeNum):
	selected = Data.nodes[nodeNum]["Name"]
	selectedNum = nodeNum
	$CanvasLayer/Menu.visible = true
	$CanvasLayer/Menu/Background/Unlocked.text = ""
	for unlockable in Data.nodes[nodeNum]["Unlocks"]:
		$CanvasLayer/Menu/Background/Unlocked.text += unlockable + "\n"
	
	$CanvasLayer/Menu/Cost.text = tr("cost") + ": " + str(Data.nodes[nodeNum]["Cost"])
	if Data.science >= Data.nodes[nodeNum]["Cost"]:
		$CanvasLayer/Menu/Buy.disabled = false
	else:
		$CanvasLayer/Menu/Buy.disabled = true


func _on_Buy_pressed():
	for line in $CanvasLayer/Menu/Background/Unlocked.text.split("\n"):
		Data.unlockedModules.append(line)
	instances[selected].get_node("TextureRect").disabled = true
	Data.nodes[selectedNum]["Unlocked"] = true
	Data.science -= Data.nodes[selectedNum]["Cost"]
	get_parent().updateCurrency()
	$CanvasLayer/Menu.visible = false
