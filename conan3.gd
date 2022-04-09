extends KinematicBody2D

var sumdelay = 0
var v = Vector2(0,0)
var speed = 7
var Infomenu
var PopupEnd
var move =true
# Called when the node enters the scene tree for the first time.
func _ready():
	Infomenu = get_parent().get_node("InfoMenu")
	PopupEnd = get_parent().get_node("PopupEnd")
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
		
		
	if position.x<=260 && v.x<0:
		v.x=0
	if position.x>=1740&& v.x>0:
		v.x=0
	if position.y>=1100 && v.y>0: #ล่าง
		v.y=0
	if position.y<=920 && v.y<0: #บน
		v.y=0
	if move ==false:
		v.x=0
		v.y=0
	position+=v
	
	

func _on_conan_area_entered(area):
	if area.name == "son":
		Infomenu.show()
	else:
		Infomenu.hide()
	if area.name == "Ending":
		PopupEnd.show()
		move=false
	if area.name == "to_bedroom":
		get_tree().change_scene("bedroom.tscn")
	if area.name == "to_kitchen":
		get_tree().change_scene("kitchen.tscn")
	pass # Replace with function body.

func _on_Button_pressed():
	get_tree().change_scene("Son.tscn")
	pass # Replace with function body.


func _on_TextureButton_pressed():
	get_tree().change_scene("dinnerRoom.tscn")
	pass # Replace with function body.


func _on_TextureButton2_pressed():
	get_tree().change_scene("Choice.tscn")
	pass # Replace with function body.
