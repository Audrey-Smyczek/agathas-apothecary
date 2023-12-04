extends TextureButton
# a texture button was chosen over a normal button because
# normal buttons have the non-transparent background

# when the Welcome parchment button is pressed, it is hidden
# which makes it non-interactable
func _pressed():
	Global.welcomeButton.hide()


func _on_area_2d_input_event(viewport, event, shape_idx):
	pass # Replace with function body.
