extends Sprite2D


func _on_area_2d_mouse_entered():
	scale = Vector2(0.21, 0.21)

func _on_area_2d_mouse_exited():
	scale = Vector2(0.2, 0.2)

