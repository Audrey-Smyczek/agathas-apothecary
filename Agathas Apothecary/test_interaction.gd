extends Area2D

func _on_Area2D_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventScreenTouch or event is InputEventMouseButton) and event.is_pressed():
		print(name)
		print("Test")
