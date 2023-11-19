extends Node2D

# get's the ingredient sprite node to be accessible
@onready var ingredSprite = get_node("IngredPath/IngredPathFollow/IngredSprite")


func _ready():
	var cauldron = get_node("CauldColor")
	cauldron.modulate = Color(0,0,0,0)
	Global.welcomeButton = get_node("Welcome")


func _process(_delta):
	# if a bowl is clicked, change the sprite texture
	if Global.bowlClicked:
		spriteTexture()
	# if the ingredient is clicked, update the mixed color
	if Global.ingredClicked:
		mixing()
		$CauldColor.modulate = Global.mixedColor
	# if the hair is clicked, update the hair color to be the
	# global mixed color and then set the hair click to be 
	# false which ensures that the hair doesn't change color
	# everything the global is changed
	if Global.hairClicked:
		Global.hairColor = Global.mixedColor
		$Hair.modulate = Global.hairColor
		Global.hairClicked = false


# Sets the sprite's texture to be whatever the current ingredient is
func spriteTexture():
	ingredSprite.texture = Global.curIngredTexture

# Sets the mixed color global variable to be the average of the current 
# ingredient color and the previous mixed color
func mixing():
	Global.mixedColor = (Global.curIngredColor + Global.mixedColor)/2


func _on_ingred_sprite_texture_changed():
	Global.bowlClicked = false
#	pass

