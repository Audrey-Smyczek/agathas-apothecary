extends Area2D

#Got these from the Main.gd class
@export var ingredInfo : Ingredient
#@onready var ingredSprite = get_node("IngredPath/IngredPathFollow/IngredSprite")

#This script will focus on getting the mixed colors from the Main.gd script and apply the color in the Caulderon image space.


#3. Have a color img thats initially transparent (or gray if we cant set it up as transparent) in the mouth of the caulderon.
#4. The first ingredient will replace the image:
#	Color changing function: https://ask.godotengine.org/152899/replace-color-of-an-image-in-godot-4
#	Modulate: https://godotforums.org/d/35032-how-to-change-a-sprite-color-in-godot-40
#if input(chose ingredient is clicked): https://www.youtube.com/watch?time_continue=14&v=tzzKclUNvns&embeds_referring_euri=https%3A%2F%2Fwww.google.com%2Fsearch%3Fq%3D.isclicked%2528%2529%2Bgodot%2B4%2Bfor%2Bsprites%26sca_esv%3D579859903%26rlz%3D1C1ONGR_enUS966US966%26ei%3DZTVJZdXxEIKIp&source_ve_path=Mjg2NjY&feature=emb_logo
#	print("(Ingredient name) is clicked!")
#
#	#Caulderon color value
#	ic_red = number val
#	ic_green = number val
#	ic_blue = number val
#
#	#Ingredient color value
#	i_red = number val
#	i_green = number val
#	i_blue = number val
#
#	newRed = (ic_red + i_red)/2
#	newGreen = (ic_green + i_green)/2
#	newBlue = (ic_blue + i_blue)/2
#
#	insideCauld.color_fill(newRed, newGreen, newBlue)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
