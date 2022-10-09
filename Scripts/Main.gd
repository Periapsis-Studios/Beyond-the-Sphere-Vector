extends Control


var isFirstBuild: bool = false
var currentModule: Node2D


func _ready():
	var background = load("res://Sub-Scenes/Backgrounds/" + Save.planet + "Background.tscn") as PackedScene
	self.add_child(background.instantiate())
	
	
func firstBuild():
	currentModule = Utils.instance("res://Sub-Scenes/Modules/Template.tscn")
	isFirstBuild = true
	$Camera2d.add_child(currentModule)
	currentModule.position = get_viewport().get_mouse_position()


func _on_build_pressed():
	if Station.modules.is_empty():
		firstBuild()


func _input(event):
	if event is InputEventMouseMotion:
		if isFirstBuild:
			Utils.followMouse(currentModule, event.position)


func _process(delta):
	if Input.is_action_pressed("Rotate_Left") and not Input.is_action_pressed("Rotate_Left_Snap") and isFirstBuild:
		currentModule.rotation -= deg_to_rad(DockData.rotateSpeed * delta)
		
	if Input.is_action_pressed("Rotate_Right") and not Input.is_action_pressed("Rotate_Right_Snap") and isFirstBuild:
		currentModule.rotation += deg_to_rad(DockData.rotateSpeed * delta)

	if Input.is_action_just_pressed("Rotate_Left_Snap") and isFirstBuild:
		currentModule.rotation = deg_to_rad(Utils.snapOnCircleLeft(
			rad_to_deg(currentModule.rotation),
			DockData.snapAngle
		))
		
	if Input.is_action_just_pressed("Rotate_Right_Snap") and isFirstBuild:
		currentModule.rotation = deg_to_rad(Utils.snapOnCircleRight(
			rad_to_deg(currentModule.rotation),
			DockData.snapAngle
		))
