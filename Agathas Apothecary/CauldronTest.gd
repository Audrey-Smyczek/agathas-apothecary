extends Node2D

export (Color,RGB) var mouse_out
export (Color,RGB) var mouse_over



func _on_area_2d_mouse_entered():
	
	set_modulate(mouse_over)
	set_scale(Vector2(4.5, 4.5))
	
	pass # Replace with function body.


func _on_area_2d_mouse_exited():
	
	set_modulate(mouse_out)
	set_scale(Vector2(4.5, 4.5))
	
	pass # Replace with function body.

