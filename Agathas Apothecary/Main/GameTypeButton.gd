extends Button

# leave this please -a
func _pressed():
	Global.gameTypeButton.hide()
	Global.requestVisible = true
	Global.colorCheckButton.show()
	Global.gameTypePressed = false



