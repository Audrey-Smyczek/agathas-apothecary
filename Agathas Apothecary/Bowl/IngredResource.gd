extends Resource
class_name Ingredient

@export var name : String
@export var texture : Texture
@export var color : Color
@export var audioFile : AudioStream

func get_Name():
	return name

func get_Texture():
	return texture

func get_Color():
	return color

func get_AudioFile():
	return audioFile
