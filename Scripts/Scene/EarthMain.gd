extends Control


onready var camera = $Camera2D
onready var tween: Tween = $Tween
onready var cameraTween: Tween = $CameraTween
const DOCKSPEED = 5
const DOCKDIST = 5000
const MOVESPEED = 10
var selectedPort = null
var dockBlocked: bool = false


func _ready():
	if Data.loading:
		Data.finishLoading()


func _input(event):
	if event.is_action_pressed("zoom_in"):
		camera.zoom.x -= 1
		camera.zoom.y -= 1
		if camera.zoom.y < 0.1:
			camera.zoom = Vector2(0.1, 0.1)
		
	if event.is_action_pressed("zoom_out"):
		camera.zoom.x += 1
		camera.zoom.y += 1
	
	if event is InputEventMagnifyGesture:
		camera.zoom.x += 1 - event.factor
		camera.zoom.y += 1 - event.factor
		if camera.zoom.y < 0.1:
			camera.zoom = Vector2(0.1, 0.1)
	
	
func _process(delta):
	if Input.is_action_pressed("move_down"):
		move(0, MOVESPEED * camera.zoom.x, delta)
		
	if Input.is_action_pressed("move_up"):
		move(0, -MOVESPEED * camera.zoom.x, delta)
		
	if Input.is_action_pressed("move_left"):
		move(-MOVESPEED * camera.zoom.x, 0, delta)
		
	if Input.is_action_pressed("move_right"):
		move(MOVESPEED * camera.zoom.x, 0, delta)	
	
	
func move(amount_x: int, amount_y: int, delta: float):
	cameraTween.interpolate_property(
		camera,
		"offset",
		camera.offset,
		Vector2(camera.offset.x + amount_x, camera.offset.y + amount_y),
		delta)
	cameraTween.start()
	
	
func startBuild():
	
	if Station.dockedModules.size() == 0:
		targetSelected(Vector2(0, 0), 270, "ANY") # RUS_PROBE is ignored
	
	var enabled: int = 0
	for button in get_tree().get_nodes_in_group("PortButtons"):
		if button.get_parent().ports[button.portNum] == true:
			continue
		button.disabled = false
		
		button.connect("dockRequested", self, "targetSelected")
		enabled += 1
		
	if enabled == 0:
		endBuild()
		
	
func endBuild():
	for button in get_tree().get_nodes_in_group("PortButtons"):
		button.disabled = true
		
		
func targetSelected(position, rotation, type):
	$EarthUI.showSelector(position, rotation, type)
	endBuild()
	

func dock(targetPos: Vector2, targetRot: int, targetPortType: String, module: String, port: int):
	dockBlocked = false
	var moduleObject = load("res://Scenes/Modules/" + module + ".tscn")
	var moduleInstance = moduleObject.instance()
	var moduleData = Data.modules[module]
	var portType = moduleData.portTypes[port]
	var isCorrectType: bool
	var area: Area2D = moduleInstance.get_node("Area2D")
	if not targetPortType == "ANY":
		isCorrectType = Data.validCouples[targetPortType] == portType

	if (isCorrectType or Station.dockedModules.empty()) and module in Data.unlockedModules:
		var camera = $Camera2D
		
		camera.add_child(moduleInstance)
		area.connect("area_shape_entered", self, "overlap")
		moduleInstance.visible = false
		match int(abs(targetRot)) % 360:
			180:
				var position = Vector2(
					targetPos.x - moduleData["portPos"][port].x,
					targetPos.y - moduleData["portPos"][port].y
				)
				moduleInstance.position = position
				moduleInstance.rotation_degrees = 0.0 + moduleData["portRot"][port]
				var t = Timer.new()
				t.set_wait_time(1)
				t.set_one_shot(true)
				self.add_child(t)
				t.start()
				yield(t, "timeout")
				t.queue_free()
				if not dockBlocked:
					$EarthUI/UI/BuildButton.visible = false
					$EarthUI/UI/BuildButton.disabled = true
	
					moduleInstance.visible = true
					moduleInstance.position.y += DOCKDIST
					
					tween.interpolate_property(
						moduleInstance,
						"position:y",
						moduleInstance.position.y,
						moduleInstance.position.y - DOCKDIST,
						DOCKSPEED,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
					moduleInstance.ports[port] = true
					Station.dockModule(module, moduleInstance)
					if selectedPort != null:
						selectedPort.get_parent().ports[selectedPort.portNum] = true
				else:
					Station.refundModule(module)
					moduleInstance.queue_free()
					$EarthUI/UI/Collision.visible = true
					return
					
			90:
				var position = Vector2(
					targetPos.x - moduleData["portPos"][port].y,
					targetPos.y + moduleData["portPos"][port].x
				)
				moduleInstance.position = position
				moduleInstance.rotation_degrees = 270.0 - moduleData["portRot"][port]
				var t = Timer.new()
				t.set_wait_time(1)
				t.set_one_shot(true)
				self.add_child(t)
				t.start()
				yield(t, "timeout")
				t.queue_free()
				if not dockBlocked:
					$EarthUI/UI/BuildButton.visible = false
					$EarthUI/UI/BuildButton.disabled = true
					
					moduleInstance.visible = true
					moduleInstance.position.x += DOCKDIST
					
					tween.interpolate_property(
						moduleInstance,
						"position:x",
						moduleInstance.position.x,
						moduleInstance.position.x - DOCKDIST,
						DOCKSPEED,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
					Station.dockModule(module, moduleInstance)
					moduleInstance.ports[port] = true
					if selectedPort != null:
						selectedPort.get_parent().ports[selectedPort.portNum] = true
				else:
					Station.refundModule(module)
					moduleInstance.queue_free()
					$EarthUI/UI/Collision.visible = true
					return
					
			0:
				var position = Vector2(
					targetPos.x + moduleData["portPos"][port].x,
					targetPos.y + moduleData["portPos"][port].y
				)
				moduleInstance.position = position
				moduleInstance.rotation_degrees = 180.0 + moduleData["portRot"][port]
				var t = Timer.new()
				t.set_wait_time(1)
				t.set_one_shot(true)
				self.add_child(t)
				t.start()
				yield(t, "timeout")
				t.queue_free()
				if not dockBlocked:
					$EarthUI/UI/BuildButton.visible = false
					$EarthUI/UI/BuildButton.disabled = true
					
					moduleInstance.visible = true
					moduleInstance.position.y -= DOCKDIST
					
					tween.interpolate_property(
						moduleInstance,
						"position:y",
						moduleInstance.position.y,
						moduleInstance.position.y + DOCKDIST,
						DOCKSPEED,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
					Station.dockModule(module, moduleInstance)
					moduleInstance.ports[port] = true
					if selectedPort != null:
						selectedPort.get_parent().ports[selectedPort.portNum] = true
				else:
					Station.refundModule(module)
					moduleInstance.queue_free()
					$EarthUI/UI/Collision.visible = true
					return
					
			270:
				var position = Vector2(
					targetPos.x + moduleData["portPos"][port].y,
					targetPos.y - moduleData["portPos"][port].x
				)
				moduleInstance.position = position
				moduleInstance.rotation_degrees = 90.0 - moduleData["portRot"][port]
				var t = Timer.new()
				t.set_wait_time(1)
				t.set_one_shot(true)
				self.add_child(t)
				t.start()
				yield(t, "timeout")
				t.queue_free()
				if not dockBlocked:
					$EarthUI/UI/BuildButton.visible = false
					$EarthUI/UI/BuildButton.disabled = true
					
					moduleInstance.visible = true
					moduleInstance.position.x -= DOCKDIST
					
					tween.interpolate_property(
						moduleInstance,
						"position:x",
						moduleInstance.position.x,
						moduleInstance.position.x + DOCKDIST,
						DOCKSPEED,
						Tween.TRANS_LINEAR,
						Tween.EASE_IN_OUT
					)
					tween.start()
					if not Station.dockedModules.size() == 0:
						moduleInstance.ports[port] = true
					Station.dockModule(module, moduleInstance)
					if selectedPort != null:
						selectedPort.get_parent().ports[selectedPort.portNum] = true
				else:
					Station.refundModule(module)
					moduleInstance.queue_free()
					$EarthUI/UI/Collision.visible = true
					return
	area.disconnect("area_shape_entered", self, "overlap")
	if not selectedPort == null:
		selectedPort.get_parent().dockedInstances.append(moduleInstance)
		moduleInstance.dockedInstances.append(selectedPort.get_parent())
		selectedPort.get_parent().dockedNumbers.append(port)
		moduleInstance.dockedNumbers.append(selectedPort.portNum)
	selectedPort = null
	
	var t = Timer.new()
	t.set_wait_time(DOCKSPEED)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	
	$EarthUI/UI/BuildButton.visible = true
	$EarthUI/UI/BuildButton.disabled = false
	
	t.queue_free()
	
	
func overlap(area_rid, area, area_shape_index, local_shape_index):
	dockBlocked = true
	$EarthUI.showCollision()
