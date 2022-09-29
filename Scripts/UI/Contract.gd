extends Control


export var num: int

signal selected(number)


func onSelect():
	emit_signal("selected", num)
