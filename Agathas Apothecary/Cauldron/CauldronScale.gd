extends Sprite2D


func _on_area_2d_mouse_entered():
	scale = Vector2(0.26, 0.26)

func _on_area_2d_mouse_exited():
	scale = Vector2(0.25, 0.25)

