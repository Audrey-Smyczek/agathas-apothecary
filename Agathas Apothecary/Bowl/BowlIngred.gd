extends Node2D

# Allows bowl to use Ingredient's properties
@export var ingredInfo : Ingredient


func _ready():
	$BowlFiller.modulate = ingredInfo.get_Color()


# When a bowl is clicked, set's the global variables to be the current bowl 
# selected. Also set's global bool to show that a bowl was clicked
func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed and Global.pathDone:
		
#		$BowlTextLabel.text = ingredInfo.getName()
		
		var getCurName = ingredInfo.get_Name()
		Global.curIngredName = getCurName
		print(Global.curIngredName, " bowl clicked!")
		
#		$BowlTextLabel.text = getCurName
		
		var getCurTex = ingredInfo.get_Texture()
		Global.curIngredTexture = getCurTex
#		print(Global.curIngredTexture)
		
		var getCurCol = ingredInfo.get_Color()
		Global.curIngredColor = getCurCol
#		print(Global.curIngredColor)
		
		Global.bowlClicked = true


# Increases the bowl's size when mouse hovers
func _on_area_2d_mouse_entered():
	scale = Vector2(0.13, 0.13)
	$AudioStreamPlayer2D.set_stream(ingredInfo.get_AudioFile())
	$AudioStreamPlayer2D.play()
	


# Set's bowl's size back to original when mouse leaves
func _on_area_2d_mouse_exited():
	scale = Vector2(0.12, 0.12)
	$AudioStreamPlayer2D.stop()
 
