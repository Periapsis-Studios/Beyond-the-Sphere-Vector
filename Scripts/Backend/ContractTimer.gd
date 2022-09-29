extends Node


export var num: int

signal increaseTime(number)


func emit():
	emit_signal("increaseTime", num)
