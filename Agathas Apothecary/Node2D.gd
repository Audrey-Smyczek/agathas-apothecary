extends Area2D


func on_mouse_enter():
	print("mouse entered")
	
	
func on_mouse_exit():
	print("mouse exited")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	connect("mouse_entered", on_mouse_enter())
	connect("mouse_exited", on_mouse_exit())
	
	pass # Replace with function body.

#
#func _on_area_2d_mouse_entered():
#
#	set_scale(Vector2(4.5, 4.5))
#
#	pass # Replace with function body.
#
#
#func _on_area_2d_mouse_exited():
#
#	set_scale(Vector2(2, 2))
#
#	pass # Replace with function body.
#
