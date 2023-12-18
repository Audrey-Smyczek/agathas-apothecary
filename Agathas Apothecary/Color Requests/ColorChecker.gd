extends Label

var defaultText : String = "Hello! Welcome to my Apothecary!"
var curRequestColor : Color = Color(1,1,1,1)
var colorList = ["red", "yellow", "green", "blue", "black", "white", "cyan", "magenta", "pink", "orange", "yellow-green", "purple"] 


"""On scene load, change the border of the chatbox to white."""
func _ready():
	$RequestColor.modulate = curRequestColor


"""Called every frame. If this node is visible and the user has not requested a color, 
set to the default text and color. If it is not the user has requested a color and the
color of Agatha's hair matches the request, thank user and set chatbox to default color."""
func _process(_delta):
	if Global.requestsVisible and Global.firstRequestClick:
		text = defaultText
		Global.firstRequestClick = false
		$RequestColor.modulate = Color(1,1,1,1)
	
	if checkColor(Global.hairColor, curRequestColor) and text != defaultText:
		text = "Thank you for the beautiful hair!\nClick here for another request"
		$RequestColor.modulate = Color(1,1,1,1)
		

func checkColor(firstCol, secondCol):
#	print("in checkColor")

	var rDif = (firstCol.r - secondCol.r)**2
	var gDif = (firstCol.g - secondCol.g)**2
	var bDif = (firstCol.b - secondCol.b)**2

	var difVal = rDif+gDif+bDif
#	print(firstCol)
#	print(secondCol)
#	print(difVal)
#	print()
	
	if difVal <= 0.1:
		return true
	else:
		return false


func _on_color_check_button_pressed():
#	print("button clicked")
	if Global.requestsVisible:
		var randColor = colorList[randi() % colorList.size()]	
		curRequestColor = randColor
#		print(curRequestColor)
		text = "Please make my hair " + randColor + "!\nClick again for a different request"
		$RequestColor.modulate = curRequestColor
