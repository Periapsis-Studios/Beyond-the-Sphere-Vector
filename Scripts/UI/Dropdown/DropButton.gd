extends Button

func on_press():
	get_node("../../BaseButton").hidePopup(self.text)
