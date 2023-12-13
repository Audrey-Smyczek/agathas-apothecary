extends Button

func _pressed():
# if the requests are visible, make the global variable false
# and hide the requests
	if (Global.requestsVisible):
		Global.requestsVisible = false
		Global.colorCheckButton.hide()
# if the requests are not visible, make the global variable
# true and show the requests
	elif (!Global.requestsVisible):
		Global.requestsVisible = true
		Global.colorCheckButton.show()


