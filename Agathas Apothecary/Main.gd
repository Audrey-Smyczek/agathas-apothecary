extends Node2D

#signal Ingredient

# Input function from: https://docs.godotengine.org/en/stable/tutorials/inputs/mouse_and_input_coordinates.html

# Sets the variables bowl1-4 to be the flower ingredient nodes.
@onready var bowl1 = get_node("Lavender")
@onready var bowl2 = get_node("Daisy")
@onready var bowl3 = get_node("Rose")
@onready var bowl4 = get_node("StJohnWorts")
#@onready var ingredSprite = get_node("IngredientSprite")

# _ready sets the ingredients to be not visible on the canvas.
func _ready():
	bowl1.visible = !bowl1.visible
	bowl2.visible = !bowl2.visible
	bowl3.visible = !bowl3.visible
	bowl4.visible = !bowl4.visible

# _pressed takes the bowl that was selected.
# It will make the ingredients either visible or not visible depending on
# whether it is visible or not currently
func _pressed(item):
	if (item == bowl1):
		bowl1.visible = !bowl1.visible
#		ingredSprite.changeTexture()
	if (item == bowl2):
		bowl2.visible = !bowl2.visible
	if (item == bowl3):
		bowl3.visible = !bowl3.visible
	if (item == bowl4):
		bowl4.visible = !bowl4.visible

func mixInBowl():
	pass
	

func spriteTexture():
	print("im in main changing sprite")


