extends Label

var defaultText : String = "Hello! Welcome to my Apothecary!"

var curRequestColor : Color = Color(0,0,0,0)

var colorList = ["red", "yellow", "green", "blue", "black", "white"] 

func _ready():
#	curRequestColor = Color(0,1,1,1)
	$RequestColor.modulate = curRequestColor


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if checkColor(Global.hairColor, curRequestColor) and text != defaultText:
		text = "Thanks for beautiful hair!\nClick here for another!"
		$RequestColor.modulate = Color(0,0,0,0)
		

func checkColor(firstCol, secondCol):
#	print("in checkColor")

	var rDif = (firstCol.r - secondCol.r)**2
	var gDif = (firstCol.g - secondCol.g)**2
	var bDif = (firstCol.b - secondCol.b)**2
#	var dif = sqrt(r+g+b)
#	print(r, " ", g, " ", b)
#	print(firstCol)
#	print(secondCol)
#	var r = (firstCol.r - secondCol.r)*255
#	var g = (firstCol.g - secondCol.g)*255
#	var b = (firstCol.b - secondCol.b)*255
#	var dif = sqrt(r+g+b)
#	print(r, " ", g, " ", b)
	
#	var colorDistance = distance(firstCol, secondCol)
#	if colorDistance < 90:
#
#	var rDif = 0.3 * ((firstCol.r - secondCol.r)**2)
#	var gDif = 0.59 * ((firstCol.g - secondCol.g)**2)
#	var bDif = 0.11 * ((firstCol.b - secondCol.b)**2)
#	print(rDif, " ", gDif, " ", bDif)

	var difVal = rDif+gDif+bDif
#	print(difVal)
#	print()
	
	if difVal <= 0.03:
		return true
	else:
		return false
	
#click here for next requests
#if hair color = current wanted color
#pop up says thank you for great hair
#click for another color
#d(C_1, C_2) = \sqrt{(255 - 255)^2 + (102 - 178)^2 + (102 - 102)^2} = 76
#var r = (firstCol.r*255 - secondCol.r*255)**2
#var g = (firstCol.g*255 - secondCol.g*255)**2
#var b = (firstCol.b*255 - secondCol.b*255)**2
#dif = sqrt(r+g+b)


func _on_color_check_button_pressed():
#	print("button clicked")
	var randColor = colorList[randi() % colorList.size()]
	curRequestColor = randColor
#	print(curRequestColor)
	text = "Please make my hair " + randColor + "!\nClick again for different color"
	$RequestColor.modulate = curRequestColor
