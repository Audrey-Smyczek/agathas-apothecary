extends Node2D

# Input function from: https://docs.godotengine.org/en/stable/tutorials/inputs/mouse_and_input_coordinates.html
# Get Position: https://ask.godotengine.org/11729/how-do-i-get-the-objects-coordinates-needed-for-movement

var Bowl1 : StaticBody2D
var Bowl2
var Bowl3
var Bowl4


func _input(event): # Mouse in viewport coordinates.
	#Vector2 armPos(0.0,0.0)
	if event is InputEventMouseButton: 
		print("Mouse Click/Unclick at: ", event.position)
		if (event.position) == get_position():
			print("TEST")
#	elif event is InputEventMouseMotion:
#		print("Mouse Motion at: ", event.position)

   # Print the size of the viewport.
	#print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)

#func _on_body_entered(Bowl:Node):
#	print(Bowl1, " entered")


