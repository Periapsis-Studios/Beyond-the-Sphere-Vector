extends Control


var isBuildActive: bool = false
var windowInstance: Control
var pos: Vector2
var rot: int
var targetType: String
var tutorialCurrent: int = 0


func _ready():
	updateCurrency()
	Contracts.connect("contractCompleted", self, "updateCurrency")
	_on_x1_pressed()
	if Data.tutorial:
		$TutorialCanvas/Tutorial.visible = true
		playNextTut()


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
	get_parent().get_node("Control").add_child(windowInstance)
	windowInstance.ready(type)
	
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
		if ui == $UI/Collision:
			continue
		ui.visible = true


func playNextTut():
	if tutorialCurrent > 12:
		$TutorialCanvas/Tutorial.visible = false
		return
	var locale = OS.get_locale_language().to_upper()
	var dir = Directory.new()
	if not dir.dir_exists("res://Tutorial" + locale):
		locale = "EN"
		
	var file = File.new()
	file.open("res://Tutorial" + locale + "/" + str(tutorialCurrent) + ".txt", File.READ)
	$TutorialCanvas/Tutorial/Label.text = file.get_line()
	
	var player = $TutorialCanvas/Tutorial/AudioStreamPlayer2D
	player.stream = load("res://Tutorial" + locale + "/" + str(tutorialCurrent) + ".wav")
	player.play()
	
	tutorialCurrent += 1


func _on_Continue_pressed():
	playNextTut()


func showCollision():
	$UI/Collision.visible = true
	var t = Timer.new()
	t.set_wait_time(3)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	t.queue_free()
	$UI/Collision.visible = false
