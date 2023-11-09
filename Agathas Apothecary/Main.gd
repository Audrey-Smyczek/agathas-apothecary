extends Node2D

# get's the ingredient sprite node to be accessible
@onready var ingredSprite = get_node("IngredPath/IngredPathFollow/IngredSprite")


func _ready():
	pass

func _process(_delta):
	# if a bowl is clicked, change the sprite texture
	if Global.bowlClicked:
		spriteTexture()


# Set's the sprite's texture to be whatever the current ingredient is
func spriteTexture():
	ingredSprite.texture = Global.curIngredTexture


func _on_ingred_sprite_texture_changed():
	Global.bowlClicked = false

