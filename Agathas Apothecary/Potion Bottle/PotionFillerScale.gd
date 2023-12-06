extends Sprite2D


func _on_area_2d_mouse_entered():
	scale = Vector2(4.7, 4.7)


func _on_area_2d_mouse_exited():
	scale = Vector2(4.5, 4.5)
