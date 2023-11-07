extends Sprite2D

#var bullet_tex1 = preload("res://bullet1.tex")
#@onready var bullet_sprite = get_node("bullet_sprite_node")

#func _ready():
#@onready var bowl1 = get_node("Bowl1")
#@onready var bowl2 = get_node("Bowl2")
#@onready var bowl3 = get_node("Bowl3")
#@onready var bowl4 = get_node("Bowl4")


#var lavenderTex = preload("res://Graphics/Florals/Lavender.png")

#func _on_bowl_1_visibility_changed():
##	bullet_sprite.set_texture(bullet_tex1)
#
#	self.set_texture(lavenderTex)
#	print("im in ingred sprite")
	

func changeTexture():
	print(Global.ingredName)
	print("changing texture")
	

