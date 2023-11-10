extends Node2D

# get's the ingredient sprite node to be accessible
@onready var ingredSprite = get_node("IngredPath/IngredPathFollow/IngredSprite")


func _ready():
	pass

func _process(_delta):
	# if a bowl is clicked, change the sprite texture
	if Global.bowlClicked:
		spriteTexture()
	if Global.ingredClicked:
		mixing()
		$CauldColor.modulate = Global.mixedColor #This actually made our MVP, just need to fix the bugs.


# Sets the sprite's texture to be whatever the current ingredient is
func spriteTexture():
	ingredSprite.texture = Global.curIngredTexture

# Sets the mixed color of the Mixing Spot to be the average of the new 
# ingredient color and the previous mixed color
func mixing():
	Global.mixedColor = (Global.curIngredColor + Global.mixedColor)/2 #Doesn;t actually average yet, move this function to mixingSprite script
	
	
func _on_ingred_sprite_texture_changed():
	Global.bowlClicked = false
#	pass
