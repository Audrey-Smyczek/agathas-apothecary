extends Control

#code taken from: https://www.reddit.com/r/godot/comments/p1y18p/issue_creating_image_with_code_and_setting_it_to/
#_process info from: https://docs.godotengine.org/en/stable/tutorials/scripting/idle_and_physics_processing.html

var width = 500
var height = 500

var color = [0,1,2,3,4,5,6,7,8]

var canvas

#var file = File.new()

func _ready():
	#OS.vsync_enabled = false

	#Setting up our colors
	color[0] = Color(  0,  0,  0,  0) #Blank, while technically a value this will be ignored
	color[1] = Color(255,255,255,255)#white
	color[2] = Color(  0,  0,  0,255)#black
	color[3] = Color(  0, 60,200,255)#blue
	color[4] = Color(255, 23, 23,255)#red
	color[5] = Color(255,230,  0,255)#yellow
	color[6] = Color(  0,130, 50,255)#green
	color[7] = Color(128,  0,255,255)#purple
	color[8] = Color(255,  0,128,255)#pink

func _process(delta):
	update_canvas()

func update_canvas():
	canvas = Image.new()
	canvas.create(width,height,false,Image.FORMAT_RGBA4444) #RGBA4444 stores up to 16 colors. Which is perfect for us
	
	for y in height:
		for x in width:
			canvas.set_pixel(x,y,color[randi() % 8 + 1])
	
	var texture = ImageTexture.new()
	texture.create(width, height, Image.FORMAT_RGBA4444)
	texture.set_data(canvas)
	
	$canvas.texture = texture
