extends KinematicBody2D

var sumdelay = 0
var v = Vector2(0,0)
var speed = 7
var moveX = true
var moveY = true
var Infomenu
var InfoBottle
# Called when the node enters the scene tree for the first time.
func _ready():
	Infomenu = get_parent().get_node("InfoMenu")
	InfoBottle = get_parent().get_node("InfoMenu2")
	titlescreen.get_node("AudioStreamPlayer2D")
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
		

	if position.x<=0 && v.x<0:
		v.x=0
	if position.x>=1750&& v.x>0:
		v.x=0
	if position.y>=1000 && v.y>0: #ล่าง
		v.y=0
	if position.y<=760 && v.y<0: #บน
		v.y=0
	if moveX == false && v.x >=0:
		v.x=0
	if moveY == false && v.y <=0:
		v.y=0
	position+=v
	
	

func _on_conan_area_entered(area):
	if area.name == "butler2":
		Infomenu.show()
	else:
		Infomenu.hide()
		
	if area.name == "to_hall":
		get_tree().change_scene("dinnerRoom.tscn")
	if area.name == "TuX":
		
		moveX = false
		InfoBottle.show()
	else :
		moveX = true
		InfoBottle.hide()
		
	if area.name == "TuY":
		
		moveY = false
	else :
		moveY = true
		
	pass # Replace with function body.

func _on_Button_pressed():
	get_tree().change_scene("Butler(1).tscn")
	pass # Replace with function body.


func _on_Button2_pressed():
	get_tree().change_scene("Bottle.tscn")
	goabal_var.bottle+=1
	pass # Replace with function body.
