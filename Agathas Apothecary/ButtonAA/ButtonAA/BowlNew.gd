extends Sprite2D

func _on_area_2d_mouse_entered():
#	print("mouse entered")
#	print(texture.get_width())
#	print(texture.get_height())
	var sizeto = Vector2(2410,1540)
	var size=texture.get_size()
	var scale_factor=sizeto/size
	scale=scale_factor

func _on_area_2d_mouse_exited():
#	print("mouse exited")
	var sizeto = Vector2(2310,1440)
	var size=texture.get_size()
	var scale_factor=sizeto/size
	scale=scale_factor
	
	
