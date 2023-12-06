extends TextureButton


func _on_mouse_entered():
	scale = Vector2(1.05, 1.05)

func _on_mouse_exited():
	scale = Vector2(1, 1)
