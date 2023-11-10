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
		scale = Vector2(0.1, 0.1)
		Global.ingredClicked = true
		Global.pathDone = false
		


# Increases the ingredient's size when mouse hovers
func _on_area_2d_mouse_entered():
	scale = Vector2(0.12, 0.12)

# Set's ingredient's size back to original when mouse leaves
func _on_area_2d_mouse_exited():
	scale = Vector2(0.1, 0.1)
