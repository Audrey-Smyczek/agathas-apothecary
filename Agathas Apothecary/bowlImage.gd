extends Sprite2D

# Increases the bowl's size when mouse hovers
func _on_area_2d_mouse_entered():
	var sizeto = Vector2(2410,1540)
	var size=texture.get_size()
	var scale_factor=sizeto/size
	scale=scale_factor

# Set's bowl's size back to original when mouse leaves
func _on_area_2d_mouse_exited():
	var sizeto = Vector2(2310,1440)
	var size=texture.get_size()
	var scale_factor=sizeto/size
	scale=scale_factor
 
