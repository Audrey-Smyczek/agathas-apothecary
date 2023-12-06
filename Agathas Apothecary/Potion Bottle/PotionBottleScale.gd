extends Node2D

var ingredInfo : Ingredient

# Increases the bowl's size when mouse hovers
func _on_area_2d_mouse_entered():
	scale = Vector2(4.7, 4.7)
	print("potion entered")


# Set's bowl's size back to original when mouse leaves
func _on_area_2d_mouse_exited():
	scale = Vector2(4.5, 4.5)
	print("potion exited")
 
