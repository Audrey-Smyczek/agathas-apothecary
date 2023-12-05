extends Node2D

@export var potionColor: Color


func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and Global.pathDone:
		#double click to save
		if event.double_click:
			$Image.scale = Vector2(1.0, 1.0)
			$Image.modulate = Global.mixedColor
			potionColor = Global.mixedColor
			Global.curPotionColor = Global.mixedColor
		#single click to change hair
		elif event.pressed:
			if potionColor == Color(0,0,0,1):
				Global.curPotionColor = Global.mixedColor
			else:
				Global.curPotionColor = potionColor
			
			$Image.scale = Vector2(1.0, 1.0)
			Global.hairClicked = true
			Global.potionClicked = true
