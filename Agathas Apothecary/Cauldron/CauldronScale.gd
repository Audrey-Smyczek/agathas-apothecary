extends Sprite2D


func _on_area_2d_mouse_entered():
	scale = Vector2(1.1, 1.1)

func _on_area_2d_mouse_exited():
	scale = Vector2(1.0, 1.0)

