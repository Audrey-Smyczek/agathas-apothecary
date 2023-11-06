extends Node2D

@export var ingredInfo : Ingredient


#@onready var ingredSprite = get_node("IngredientSprite")


func _ready():
	var getInfo = ingredInfo.get_Name()
#	print(getInfo)
#	print(Global.testName)
	Global.testName = getInfo
#	print(Global.testName)


#This allows us to see the independent bowls when hovered over.
func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
#		print("It was a button at:", event.button_index, event.pressed, event.is_pressed())
		print(ingredInfo.get_Name())
		print(ingredInfo.get_Texture())
		print(ingredInfo.get_Color())
		print()
		
#		Main.spriteTexture()

