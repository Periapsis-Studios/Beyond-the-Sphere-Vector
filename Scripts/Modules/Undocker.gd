extends Button


var portNum: int


func _on_Undocker_pressed():
	var dockedCount = 0
	for i in get_parent().ports.size():
		if get_parent().ports[i]:
			dockedCount += 1
			portNum = i
	if dockedCount != 1:
		return
	Station.undockModule(get_parent(), portNum, get_parent().dockedInstances[0], get_parent().dockedNumbers[0])
	get_parent().queue_free()
