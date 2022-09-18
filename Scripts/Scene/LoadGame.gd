extends Control


var selected: bool = false


func _ready():
	var dir = Directory.new()
	if not dir.dir_exists("user://saves/"):
		print(dir.make_dir("user://saves/"))
		
	dir.open("user://saves/")
	dir.list_dir_begin()

	var i = 0
	while true:
		var file = dir.get_next()
		if file == "":
			break
		elif dir.current_is_dir() and i >= 2:
			$Control.options.append(file)
		i += 1

	dir.list_dir_end()


func selected(name):
	selected = true
	Data.loadData(name)
	$Science.text = str(Data.science)
	$MoneyNum.text = str(Data.money / (Data.money / 10 % 6 + 1))
	match Data.money / 10 % 6:
		0: $MoneySign.text = ""
		1: $MoneySign.text = "k"
		2: $MoneySign.text = "M"
		3: $MoneySign.text = "G"
		4: $MoneySign.text = "T"
		5: $MoneySign.text = "P"
		6: $MoneySign.text = "E"
		7: $MoneySign.text = "Z"
		8: $MoneySign.text = "Y"
		
		
func confirmed():
	if not selected:
		return
	Data.loadStation()
	
