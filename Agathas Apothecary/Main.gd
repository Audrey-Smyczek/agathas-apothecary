extends Node2D

# Input function from: https://docs.godotengine.org/en/stable/tutorials/inputs/mouse_and_input_coordinates.html
# Get Position: https://ask.godotengine.org/11729/how-do-i-get-the-objects-coordinates-needed-for-movement

@onready var bowl1 = get_node("Lavender")
@onready var bowl2 = get_node("Daisy")
@onready var bowl3 = get_node("Rose")
@onready var bowl4 = get_node("StJohnWorts")

func _ready():
	bowl1.visible = !bowl1.visible
	bowl2.visible = !bowl2.visible
	bowl3.visible = !bowl3.visible
	bowl4.visible = !bowl4.visible

# visibility change working here
# code for visibility from: https://godotforums.org/d/22061-show-hide-visibility/2
func _pressed(item):
	if (item == bowl1):
		bowl1.visible = !bowl1.visible
	if (item == bowl2):
		bowl2.visible = !bowl2.visible
	if (item == bowl3):
		bowl3.visible = !bowl3.visible
	if (item == bowl4):
		bowl4.visible = !bowl4.visible

func _input(event): # Mouse in viewport coordinates.
	#Vector2 armPos(0.0,0.0)
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		if (event.pressed == true):
			if (event.position.x >= 370 && event.position.x <= 470 && event.position.y >= 870 && event.position.y <= 940):
				print("bowl 1\n")
				_pressed(bowl1)
			if (event.position.x >= 500 && event.position.x <= 610 && event.position.y >= 900 && event.position.y <= 1000):
				print("bowl 2\n")
				_pressed(bowl2)
			if (event.position.x >= 640 && event.position.x <= 770 && event.position.y >= 900 && event.position.y <= 1000):
				_pressed(bowl3)
				print("bowl 3\n")
			if (event.position.x >= 805 && event.position.x <= 950 && event.position.y >= 890 && event.position.y <= 960):
				_pressed(bowl4)
				print("bowl 4")
			if (event.position.x >= 580 && event.position.x <= 800 && event.position.y >= 700 && event.position.y <= 900):
				print("cauldron")



   # Print the size of the viewport.
	#print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)



