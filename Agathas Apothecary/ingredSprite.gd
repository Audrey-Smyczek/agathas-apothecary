extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
#	const movespeed := 4.0
#	IngredPathFollow.progress += movespeed * delta
	pass


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("ingredient sprite clicked!")


# Lavender (389, 1200)
# Daisy (990, 1000)
# Rose (1000, 894)
# StJohnsWorts (1000, 966)

# Increases the ingredient's size when mouse hovers
func _on_area_2d_mouse_entered():
#	print(texture.get_size())
#	print(texture.get_size())

#	var sizeto = Vector2(2410,1540)
#	var size=texture.get_size()
#	var scale_factor=sizeto/size
#	scale=scale_factor
	pass

# Set's ingredient's size back to original when mouse leaves
func _on_area_2d_mouse_exited():
#	print(texture.get_size())

#	var sizeto = Vector2(2310,1440)
#	var size=texture.get_size()
#	var scale_factor=sizeto/size
#	scale=scale_factor
	pass
