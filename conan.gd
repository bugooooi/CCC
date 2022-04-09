extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sumdelay = 0
var v = Vector2(0,0)
var speed = 2


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func play(key):	
	$conan/AnimationPlayer.play(key)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	z_index = position.y
	
	v.x=0
	v.y=0
	
	if Input.is_action_pressed("ui_up"):
		v.y = -speed
		play("walk_U")
		pass
				
	if Input.is_action_pressed("ui_left"):
		v.x= -speed
		play("walk_L")
		pass
		
	if Input.is_action_pressed("ui_right"):
		v.x= speed
		play("walk_R")
		pass
	
	if Input.is_action_pressed("ui_down"):
		v.y = speed
		play("walk_D")
		pass	
	elif v.x==0 && v.y==0:
		play("idle")
	position+=v
	

		
	
	