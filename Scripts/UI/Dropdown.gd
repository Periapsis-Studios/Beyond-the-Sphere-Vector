extends Control

export var options: Array
export var defaultOption: String

signal optionChanged(name)


func changeOption(option: String):
	emit_signal("optionChanged", option)
