extends Node2D

# get's the ingredient sprite node to be accessible
@onready var ingredSprite = get_node("IngredPath/IngredPathFollow/IngredSprite")


func _ready():
	var cauldron = get_node("CauldColor")
	cauldron.modulate = Color(0,0,0,0)


func _process(_delta):
	# if a bowl is clicked, change the sprite texture
	if Global.bowlClicked:
		spriteTexture()
	if Global.ingredClicked:
		mixing()
		$CauldColor.modulate = Global.mixedColor


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
