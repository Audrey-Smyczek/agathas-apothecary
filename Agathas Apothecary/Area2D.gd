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

