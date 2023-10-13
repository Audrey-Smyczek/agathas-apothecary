extends CanvasLayer

# Imput function from: https://docs.godotengine.org/en/stable/tutorials/inputs/mouse_and_input_coordinates.html



func _input(event): # Mouse in viewport coordinates.
	Vector2 armPos(0.0,0.0)
	
	if event is InputEventMouseButton: 
		
		print("Mouse Click/Unclick at: ", event.position)
#	elif event is InputEventMouseMotion:
#		print("Mouse Motion at: ", event.position)

   # Print the size of the viewport.
	print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)


