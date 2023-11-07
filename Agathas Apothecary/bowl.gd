extends Node2D

# signal import code: https://kidscancode.org/godot_recipes/3.x/basics/custom_resources/index.html
#signal Ingredient

@export var ingredInfo : Ingredient
#@onready var ingredSprite = get_node("IngredientSprite")


# Imput function from: https://docs.godotengine.org/en/stable/tutorials/inputs/mouse_and_input_coordinates.html
#@export var clickableObject: CollisionObject2D

#func _input(event): # Mouse in viewport coordinates.
#	if event is InputEventMouseButton && event.is_pressed():
#		print("this is a bowl click", event)
#		#Vector2armPos(0.0,0.0)
	

#func _ready():
#	clickableObject.input_event.connect(handle_click)


#This allows us to see the independent bowls when hovered over.
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
#		print("It was a button at:", event.button_index, event.pressed, event.is_pressed())
		print(ingredInfo.get_Name())
		print(ingredInfo.get_Texture())
		print(ingredInfo.get_Color())
		print()
		
#		Main.spriteTexture()



#func _input_event(viewport, event, shape_idx):
#	if event is InputEventMouseButton: 
#		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
#			print("Mouse Click/Unclick at: BOWL")
		#print("Mouse Click/Unclick at: BOWL")
#	elif event is InputEventMouseMotion:
#		print("Mouse Motion at: ", event.position)

# Print the size of the viewport.
	#print("Viewport Resolution is: ", get_viewport().get_visible_rect().size)

	

