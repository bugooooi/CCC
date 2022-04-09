extends Node2D

# Declare member variables here. Examples:
var v = Vector2(0,0)
var speed = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Char1.position.x<=0 && $Char1.v.x<0:
		$Char1.v.x=0
	if $Char1.position.x>=5000 && $Char1.v.x>0:
		$Char1.v.x=0
	if $Char1.position.y>=970 && $Char1.v.y>0:
		$Char1.v.y=0
	if $Char1.position.y<=690 && $Char1.v.y<0:
		$Char1.v.y=0
	
	pass
