extends Node2D

@export var ingredInfo : Ingredient

@onready var ingredSprite = get_node("IngredientSprite")


func _ready():
#	var getCurName = ingredInfo.get_Name()
#	Global.curIngredName = getCurName
#	print(Global.curIngredName)
#
#	var getCurTex = ingredInfo.get_Texture()
#	Global.curIngredTexture = getCurTex
#	print(Global.curIngredTexture)
#
#	var getCurCol = ingredInfo.get_Color()
#	Global.curIngredColor = getCurCol
#	print(Global.curIngredColor)

	pass


#This allows us to see the independent bowls when hovered over.
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
#		print("It was a button at:", event.button_index, event.pressed, event.is_pressed())
#		print(ingredInfo.get_Name())
#		print(ingredInfo.get_Texture())
#		print(ingredInfo.get_Color())

		var getCurName = ingredInfo.get_Name()
		Global.curIngredName = getCurName
		print(Global.curIngredName)
		
		var getCurTex = ingredInfo.get_Texture()
		Global.curIngredTexture = getCurTex
		print(Global.curIngredTexture)
		
		var getCurCol = ingredInfo.get_Color()
		Global.curIngredColor = getCurCol
		print(Global.curIngredColor)
		
		Global.bowlClicked = true

		print()
		
#		ingredSprite.changeTexture()
		

