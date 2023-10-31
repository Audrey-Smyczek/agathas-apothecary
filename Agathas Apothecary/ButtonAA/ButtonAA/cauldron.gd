extends Sprite2D

var original_size = texture.get_size()

#size of sprite is 1000,1000

func _on_area_2d_mouse_entered():
#	print("mouse entered")
	var sizeto = Vector2(1100,1100)
	var size=texture.get_size()
	var scale_factor=sizeto/size
	scale=scale_factor
#	scale = Vector2(150, 150)
	
#trying to make this work
#	var scale_factor = original_size * 1.2
#	print(size)
#	scale = original_size * 1.2


func _on_area_2d_mouse_exited():
#	print("mouse exited")
	var sizeto = Vector2(1000,1000)
	var size=texture.get_size()
	var scale_factor=sizeto/size
	scale=scale_factor
	
	
#trying to make this work - screen goes blank
#	scale = original_size
#	var scale_factor = size * 0.8
#	print(size)


