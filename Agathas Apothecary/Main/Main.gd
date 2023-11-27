extends Node2D

# get's the ingredient sprite node to be accessible
@onready var ingredSprite = get_node("IngredPath/IngredPathFollow/IngredSprite")


func _ready():
	var cauldron = get_node("CauldColor")
	cauldron.modulate = Color(0,0,0,0)
	Global.welcomeButton = get_node("Welcome")
	rgb_to_hsv(45, 215, 0)


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


# Python3 program change RGB Color 
# Model to HSV Color Model 
func rgb_to_hsv(r0, g0, b0): 
	# declaring vars
	var h
	var s
	var v
	# R, G, B values are divided by 255 
	# to change the range from 0..255 to 0..1: 
	var r = r0 / 255
	var g = g0 / 255
	var b = b0 / 255

	# h, s, v = hue, saturation, value 
	var cmax = max(r, g, b) # maximum of r, g, b 
	var cmin = min(r, g, b) # minimum of r, g, b 
	var diff = cmax-cmin	 # diff of cmax and cmin. 

	# if cmax and cmax are equal then h = 0 
	if cmax == cmin: 
		h = 0
	
	# if cmax equal r then compute h 
	elif cmax == r: 
		h = (60 * ((g - b) / diff) + 360) % 360

	# if cmax equal g then compute h 
	elif cmax == g: 
		h = (60 * ((b - r) / diff) + 120) % 360

	# if cmax equal b then compute h 
	elif cmax == b: 
		h = (60 * ((r - g) / diff) + 240) % 360

	# if cmax equal zero 
	if cmax == 0: 
		s = 0
	else: 
		s = (diff / cmax) * 100

	# compute v 
	v = cmax * 100
	
	print (h, s, v)
	
	# testing:
	# print(rgb_to_hsv(45, 215, 0)) 
	# print(rgb_to_hsv(31, 52, 29)) 
	# print(rgb_to_hsv(129, 88, 47)) 

