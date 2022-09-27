extends Control


var isBuildActive: bool = false
var windowInstance: Control
var pos: Vector2
var rot: int
var targetType: String


func _ready():
	updateCurrency()
	Contracts.connect("contractCompleted", self, "updateCurrency")
	_on_x1_pressed()


func _on_BuildButton_pressed():
	if not isBuildActive:
		get_parent().startBuild()
		isBuildActive = true
	else:
		get_parent().endBuild()
		isBuildActive = false
		hideSelector()


func showSelector(position, rotation, type):
	pos = position
	rot = rotation
	targetType = type
	
	isBuildActive = true
	var windowScene = load("res://Scenes/UI/ModuleSelect.tscn")
	windowInstance = windowScene.instance()
	windowInstance.ready(type)
	
	get_parent().get_node("Control").add_child(windowInstance)
	
	windowInstance.connect("confirmed", self, "confirmSelection")


func hideSelector():
	isBuildActive = false
	
	if windowInstance == null:
		return
	
	windowInstance.queue_free()
	windowInstance = null


func confirmSelection(module, port):
	get_parent().dock(pos, rot, targetType, module, port)
	hideSelector()


func _on_PauseButton_pressed():
	var pauseScene = load("res://Scenes/UI/PauseMenu.tscn")
	$UI.add_child(pauseScene.instance())


func updateCurrency():
	$UI/TextureRect/Science.text = str(Data.science)
	if Data.difficulty == 0:
		$UI/TextureRect/MoneyCounter.text = "∞"
		$UI/TextureRect/MoneyUnit.text = ""
		return
	$UI/TextureRect/MoneyCounter.text = Data.getMoneyString(Data.money, 6)[0]
	$UI/TextureRect/MoneyUnit.text = Data.getMoneyString(Data.money, 6)[1]


func _on_ContractButton_pressed():
	$Popup.add_child(load("res://Scenes/Contracts.tscn").instance())


func _on_x4_pressed():
	Engine.time_scale = 4.0
	$UI/x4.disabled = true
	$UI/x2.disabled = false
	$UI/x1.disabled = false
	$UI/Pause.disabled = false


func _on_x2_pressed():
	Engine.time_scale = 2.0
	$UI/x4.disabled = false
	$UI/x2.disabled = true
	$UI/x1.disabled = false
	$UI/Pause.disabled = false


func _on_x1_pressed():
	Engine.time_scale = 1.0
	$UI/x4.disabled = false
	$UI/x2.disabled = false
	$UI/x1.disabled = true
	$UI/Pause.disabled = false


func _on_Pause_pressed():
	Engine.time_scale = 0.0
	$UI/x4.disabled = false
	$UI/x2.disabled = false
	$UI/x1.disabled = false
	$UI/Pause.disabled = true


func _on_TechButton_pressed():
	self.add_child(load("res://Scenes/TechTree.tscn").instance())
	for ui in $UI.get_children():
		ui.visible = false


func showUI():
	for ui in $UI.get_children():
		ui.visible = true
