extends Node

var welcomeButton : TextureButton
# leave this please -a
var gameTypeButton : Button
var colorCheckButton : Node
var gameTypePressed : bool = false

var curIngredName : String
var curIngredTexture : Texture
var curIngredColor : Color = Color(0,0,0,0)

var bowlClicked : bool = false

var ingredClicked : bool = false

var hairClicked : bool = false

var potionClicked : bool = false

var pathDone : bool = true

var mixing : bool = false

#leave this please -a
var requestVisible : bool = false

var mixedColor : Color

var hairColor : Color

var curPotionColor : Color
