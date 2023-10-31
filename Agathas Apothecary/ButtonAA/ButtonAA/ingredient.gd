extends Resource
class_name IngredientClass

#cut out thw ingre portion, its repretative
@export var name : String
@export var texture : Texture
@export var color : String #we'll check to see if we can change it to a hex code

func get_ingrename():
	return name

func get_ingreimg():
	return texture
	#We want to see the actual image, possibly use .get_image()? It would make a copy of the images we click on, possibly good for the mixing portion!!!

func get_ingrecol():
	return color
