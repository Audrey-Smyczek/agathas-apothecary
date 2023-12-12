extends Node2D

@export var potionColor: Color = Color(0,0,0,0)

var LastPressedTime = 0


func _ready():
	$Image.modulate = Color(0,0,0,0)


func _process(delta):
	if (LastPressedTime > 0):
		LastPressedTime = max(0, LastPressedTime - delta)
		if (LastPressedTime == 0) and Global.pathDone:
			OnSingleClick()


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and Global.pathDone:
		if (LastPressedTime > 0):
			OnDoubleClick()
			LastPressedTime = 0
		else:
			LastPressedTime = 0.2


func OnDoubleClick():
	print("double click")
	$Image.scale = Vector2(4.5, 4.5)
	$Image.modulate = Global.mixedColor
	potionColor = Global.mixedColor
	Global.curPotionColor = Global.mixedColor


func OnSingleClick():
	print("single click")
	if potionColor == Color(0,0,0,0):
		Global.curPotionColor = Global.mixedColor
	else:
		Global.curPotionColor = potionColor
	
	$Image.scale = Vector2(4.5, 4.5)
	Global.hairClicked = true
	Global.potionClicked = true
