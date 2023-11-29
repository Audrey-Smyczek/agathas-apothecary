extends Node2D

func _ready():
	pass

# When the hair is clicked, it sets the global variable of hairClicked to be
# true. This triggers a function in Main to run.
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		Global.hairClicked = true
