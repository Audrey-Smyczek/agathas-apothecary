extends Path2D

@onready var PathFollow = get_node("IngredPathFollow")
@onready var ingredSprite = get_node("IngredPathFollow/IngredSprite")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var pathProgress = PathFollow.progress

	
#	print(pathProgress)
#	print("pathprogress ", pathProgress)
	if pathProgress >= 199:
#		print("Path done")
		Global.ingredClicked = false
#		Global.bowlClicked = false
		PathFollow.progress = 0
		ingredSprite.texture = null

	if Global.ingredClicked:
		const movespeed := 130.0
		$IngredPathFollow.progress += movespeed * delta
#		print(get_curve( ).get_point_position()

