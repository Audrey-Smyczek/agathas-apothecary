extends Node2D

# Allows bowl to use Ingredient's properties
@export var ingredInfo : Ingredient


func _ready():
	pass


# When a bowl is clicked, set's the global variables to be the current bowl 
# selected. Also set's global bool to show that a bowl was clicked
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		var getCurName = ingredInfo.get_Name()
		Global.curIngredName = getCurName
		print(Global.curIngredName, " bowl clicked!")
		
		var getCurTex = ingredInfo.get_Texture()
		Global.curIngredTexture = getCurTex
#		print(Global.curIngredTexture)
		
		var getCurCol = ingredInfo.get_Color()
		Global.curIngredColor = getCurCol
#		print(Global.curIngredColor)
		
		Global.bowlClicked = true

