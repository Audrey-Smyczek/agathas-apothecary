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
		if (event.position.x >= 370 && event.position.x <= 470 && event.position.y >= 870 && event.position.y <= 940):
			print("bowl 1")
		if (event.position.x >= 500 && event.position.x <= 610 && event.position.y >= 900 && event.position.y <= 1000):
			print("bowl 2")
		if (event.position.x >= 640 && event.position.x <= 770 && event.position.y >= 900 && event.position.y <= 1000):
			print("bowl 3")
		if (event.position.x >= 805 && event.position.x <= 950 && event.position.y >= 890 && event.position.y <= 960):
			print("bowl 4")
		if (event.position.x >= 600 && event.position.x <= 800 && event.position.y >= 700 && event.position.y <= 900):
			print("cauldron")


#	elif event is InputEventMouseMotion:
#		print("Mouse Motion at: ", event.position)

   # Print the size of the viewport.
	#print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)

#https://stackoverflow.com/questions/69728827/how-do-i-detect-collisions-in-godot
#func _on_body_entered(Bowl:Node):
#	print(Bowl1, " entered")


