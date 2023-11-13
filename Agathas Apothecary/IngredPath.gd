extends Path2D

@onready var PathFollow = get_node("IngredPathFollow")
@onready var ingredSprite = get_node("IngredPathFollow/IngredSprite")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var pathProgress = PathFollow.progress
	var startCurve = get_curve( ).get_point_position(0).y
	var endCurve = get_curve( ).get_point_position(1).y
	
	if pathProgress >= endCurve-startCurve-2:
#		print("Path done")
		Global.ingredClicked = false
#		Global.bowlClicked = false
		PathFollow.progress = 0
		ingredSprite.texture = null
		Global.pathDone = true


	if Global.ingredClicked:
		const movespeed := 130.0
		$IngredPathFollow.progress += movespeed * delta
