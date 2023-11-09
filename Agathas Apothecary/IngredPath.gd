extends Path2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	const movespeed := 2.0
	$IngredPathFollow.progress += movespeed * delta

