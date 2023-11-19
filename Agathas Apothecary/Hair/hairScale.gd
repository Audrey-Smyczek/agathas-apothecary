extends Sprite2D

# Increases the bowl's size when mouse hovers
func _on_area_2d_mouse_entered():
	scale = Vector2(1.1, 1.1)


# Set's bowl's size back to original when mouse leaves
func _on_area_2d_mouse_exited():
	scale = Vector2(1.0, 1.0)
