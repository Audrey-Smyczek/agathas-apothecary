extends Node2D

@export var potionColor: Color


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed and Global.pathDone:
		$Image.modulate = Global.mixedColor
		$Image.scale = Vector2(1.0, 1.0)
