extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var v = Vector2(0,0) 
var speed=2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	v.x=0
	v.y=0
	pass


func _on_buttonL_pressed():
	v.x=-speed
	pass # Replace with function body.


func _on_buttonD_pressed():
	v.y = speed
	pass # Replace with function body.


func _on_ButtonU_pressed():
	v.y= -speed
	pass # Replace with function body.


func _on_ButtonR_pressed():
	v.x = speed
	pass # Replace with function body.
