extends Node2D
# Imput function from: https://docs.godotengine.org/en/stable/tutorials/inputs/mouse_and_input_coordinates.html

#@export var clickableObject: CollisionObject2D

#func _input(event): # Mouse in viewport coordinates.
#	if event is InputEventMouseButton && event.is_pressed():
#		print("this is a bowl click", event)
#		#Vector2armPos(0.0,0.0)
	

#func _ready():
#	clickableObject.input_event.connect(handle_click)


#This allows us to see the independent bowls when hovered over.
func _on_area_2d_input_event(viewport, event, shape_idx):
	print("This is from _on_area_2d_input_event", self, event)
	if event is InputEventMouseButton: #This isn't running, ask lucy for help.
		print("It was a button", event.button_index, event.pressed, event.is_pressed())
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("A Click!")
	
#func _input_event(viewport, event, shape_idx):
#	if event is InputEventMouseButton: 
#		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
#			print("Mouse Click/Unclick at: BOWL")
		#print("Mouse Click/Unclick at: BOWL")
#	elif event is InputEventMouseMotion:
#		print("Mouse Motion at: ", event.position)

   # Print the size of the viewport.
	#print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)
