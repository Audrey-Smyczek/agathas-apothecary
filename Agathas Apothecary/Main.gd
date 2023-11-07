extends Node2D


# Sets the variables to be the flower ingredient nodes (sprites)
@onready var lavender = get_node("Lavender")
@onready var daisy = get_node("Daisy")
@onready var rose = get_node("Rose")
@onready var stJohnWorts = get_node("StJohnWorts")

#get the bowl nodes to access clicks
@onready var bowl1 = get_node("Bowl1")
@onready var bowl2 = get_node("Bowl2")
@onready var bowl3 = get_node("Bowl3")
@onready var bowl4 = get_node("Bowl4")



#@onready var ingredSprite = get_node("IngredientSprite")

# _ready sets the ingredients to be not visible on the canvas.
func _ready():

#	lavender.visible = !lavender.visible
#	daisy.visible = !daisy.visible
#	rose.visible = !rose.visible
#	stJohnWorts.visible = !stJohnWorts.visible
	pass

# _pressed takes the bowl that was selected.
# It will make the ingredients either visible or not visible depending on
# whether it is visible or not currently
func _pressed(item):
	if (item == bowl1):
		print("IM HERE IN BOWL 1")
#	if (item == lavender):
#		lavender.visible = !lavender.visible
##		ingredSprite.changeTexture()
#	if (item == daisy):
#		daisy.visible = !daisy.visible
#	if (item == rose):
#		rose.visible = !rose.visible
#	if (item == stJohnWorts):
#		stJohnWorts.visible = !stJohnWorts.visible
	print(item)


func mixInBowl():
	pass
	

func spriteTexture():
	print("im in main changing sprite")


