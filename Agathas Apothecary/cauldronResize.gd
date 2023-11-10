extends Sprite2D

var original_size = texture.get_size()

func _on_area_2d_mouse_entered():
	scale = Vector2(1.15, 1.15)

func _on_area_2d_mouse_exited():
	scale = Vector2(1.0, 1.0)

