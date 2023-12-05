extends TextureButton
# a texture button was chosen over a normal button because
# normal buttons have the non-transparent background

# when the Welcome parchment button is pressed, it is hidden
# which makes it non-interactable
func _pressed():
	Global.welcomeButton.hide()


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		if Global.welcomeButton.hidden:
			Global.welcomeButton.show()
#		elif Global.welcomeButton.show:
#			Global.welcomeButton.hide()
