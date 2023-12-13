extends Label

var defaultText : String = "Hello! Welcome to my Apothecary!"

var curRequestColor : Color = Color(1,1,1,1)

var colorList = ["red", "yellow", "green", "blue", "black", "white", "cyan", "magenta", "pink", "orange", "yellow-green", "purple"] 

func _ready():
#	curRequestColor = Color(0,1,1,1)
	$RequestColor.modulate = curRequestColor


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Global.requestsVisible and Global.firstRequestClick:
		text = defaultText
		Global.firstRequestClick = false
		$RequestColor.modulate = Color(1,1,1,1)
	
	if checkColor(Global.hairColor, curRequestColor) and text != defaultText:
		text = "Thanks for the beautiful hair!\nClick here for another!"
		$RequestColor.modulate = Color(1,1,1,1)
		

func checkColor(firstCol, secondCol):
#	print("in checkColor")

	var rDif = (firstCol.r - secondCol.r)**2
	var gDif = (firstCol.g - secondCol.g)**2
	var bDif = (firstCol.b - secondCol.b)**2

	var difVal = rDif+gDif+bDif
	print(firstCol)
	print(secondCol)
	print(difVal)
#	print()
	
	if difVal <= 0.1:
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
	if Global.requestsVisible:
		var randColor = colorList[randi() % colorList.size()]	
		curRequestColor = randColor
#		print(curRequestColor)
		text = "Please make my hair " + randColor + "!\nClick again for different color"
		$RequestColor.modulate = curRequestColor
