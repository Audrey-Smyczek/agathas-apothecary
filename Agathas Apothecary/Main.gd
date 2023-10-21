extends Node2D

# Input function from: https://docs.godotengine.org/en/stable/tutorials/inputs/mouse_and_input_coordinates.html
# Get Position: https://ask.godotengine.org/11729/how-do-i-get-the-objects-coordinates-needed-for-movement


var newIngred


func _input(event): # Mouse in viewport coordinates.
	#Vector2 armPos(0.0,0.0)
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		if (event.position.x >= 370 && event.position.x <= 470 && event.position.y >= 870 && event.position.y <= 940):
			print("bowl 1\n")
			var newIngred1 = get_node("Lavender").duplicate()

			# the parent can be get_tree().get_root() or some other node
			get_tree().get_root().add_child(newIngred1)
			# ownership is different, I think it's not the same root as the root node
			newIngred1.set_owner(get_tree().get_edited_scene_root())
			#print(newIngred1)
			newIngred1.add_to_group("Ingreds")
			newIngred = newIngred1
			newIngred.add_to_group("Ingreds")
			
			# CAUSES AN ERROR, GOOD TO SEE VARIABLES
			#print("New" + newIngred)
		if (event.position.x >= 500 && event.position.x <= 610 && event.position.y >= 900 && event.position.y <= 1000):
			print("bowl 2\n")
			#var newIngred2 = get_node("Bowl2").duplicate()
			var newIngred2 = get_node("Daisy").duplicate()

			print(newIngred2)
		if (event.position.x >= 640 && event.position.x <= 770 && event.position.y >= 900 && event.position.y <= 1000):
			var newIngred3 = get_node("Rose").duplicate()
			print("bowl 3\n")
		if (event.position.x >= 805 && event.position.x <= 950 && event.position.y >= 890 && event.position.y <= 960):
			var newIngred4 = get_node("StJohnWorts").duplicate()
			print("bowl 4")
		if (event.position.x >= 580 && event.position.x <= 800 && event.position.y >= 700 && event.position.y <= 900):
			print("cauldron")



   # Print the size of the viewport.
	#print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)



