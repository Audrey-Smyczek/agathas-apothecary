extends Sprite2D


func _on_hair_area_mouse_exited():
	scale = Vector2(1.0, 1.0)

func _on_hair_area_mouse_entered():
	scale = Vector2(1.1, 1.1)
