extends Node2D

# get's the ingredient sprite node to be accessible
@onready var ingredSprite = get_node("IngredPath/IngredPathFollow/IngredSprite")


func _ready():
	Global.mixedColor = Color(0.502,0.502,0.502,1)
	$CauldColor.modulate = Global.mixedColor
	Global.hairColor = Color(0.502,0.502,0.502,1)
	$Hair.modulate = Global.hairColor
	
	Global.welcomeButton = get_node("Welcome")
	
#	$MenuButton.get_popup()


func _process(_delta):
	# if a bowl is clicked, change the sprite texture
	if Global.bowlClicked:
		spriteTexture()
#		print("h ", Global.curIngredColor.h)
#		print("s ", Global.curIngredColor.s)
#		print("v ", Global.curIngredColor.v)
	# if the ingredient is clicked, update the mixed color
	if Global.mixing:
		print("mixing...")
		mixingRGB()
		$CauldColor.modulate = Global.mixedColor
		Global.mixing = false
	# if the hair is clicked, update the hair color to be the
	# global mixed color and then set the hair click to be 
	# false which ensures that the hair doesn't change color
	# everything the global is changed
	if Global.hairClicked:
		if Global.potionClicked:
			Global.hairColor = Global.curPotionColor
			$Hair.modulate = Global.curPotionColor
			Global.hairClicked = false
			Global.potionClicked = false
		else:
			Global.hairColor = Global.mixedColor
			$Hair.modulate = Global.hairColor
			Global.hairClicked = false


# Sets the sprite's texture to be whatever the current ingredient is
func spriteTexture():
	ingredSprite.texture = Global.curIngredTexture


func _on_ingred_sprite_texture_changed():
	Global.bowlClicked = false


# Sets the mixed color global variable to be the average of the current 
# ingredient rgb values and the previous mixed rgb values
func mixingRGB():
#	Global.mixedColor = (Global.curIngredColor + Global.mixedColor)/2
	if Global.mixedColor == Color(0.502,0.502,0.502,1):
		print("old mixed color ", Global.mixedColor)
		print("curr color ",Global.curIngredColor)
		Global.mixedColor = Global.curIngredColor
		print("new mixed color ",Global.mixedColor)
	else:
		print("old mixed color ", Global.mixedColor)
		print("curr color ",Global.curIngredColor)
		var newR = (Global.curIngredColor.r+Global.mixedColor.r)/2
		var newG = (Global.curIngredColor.g+Global.mixedColor.g)/2
		var newB = (Global.curIngredColor.b+Global.mixedColor.b)/2
		Global.mixedColor = Color(newR, newG, newB)
		print("new mixed color ",Global.mixedColor)
		print()


# Mixing two colors according to HSV
func mixingHSV(): 
	# s and v don't change, stay as 1
	print("old mixed color ", Global.mixedColor)
	print("curr color ",Global.curIngredColor)
	var mixedH = Global.mixedColor.h
	var mixedS = Global.mixedColor.s
	var mixedV = Global.mixedColor.v
	
	var currH = Global.curIngredColor.h
	var currS = Global.curIngredColor.s
	var currV = Global.curIngredColor.v

	var newH = (currH + mixedH)/2
	var newS = (currS + mixedS)/2
	var newV = (currV + mixedV)/2
	
	Global.mixedColor = Color.from_hsv(newH, newS, newV)
	print("new mixed color ",Global.mixedColor)


func _on_reset_button_pressed():
	Global.mixedColor = Color(0.502,0.502,0.502,1)
	Global.hairColor = Color(0.502,0.502,0.502,1)
	$CauldColor.modulate = Global.mixedColor
	$Hair.modulate = Global.hairColor
	
	

