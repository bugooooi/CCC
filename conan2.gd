extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var sumdelay = 0
var v = Vector2(0,0)
var speed = 7
var moveX1 = true
var moveX2 = true
var moveY = true
var InfoWife
var InfoBed
var InfoTable

onready var Q =get_node("/root/Wife")
func _ready():
	InfoWife = get_parent().get_node("InfoWife")
	InfoBed = get_parent().get_node("InfoBed")
	InfoTable = get_parent().get_node("InfoTable")
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
		
	
	if position.x<=275 && v.x<0:
		v.x=0
	if position.x>=1650 && v.x>0:
		v.x=0
	if position.y>=970 && v.y>0:
		v.y=0
	if position.y<=765 && v.y<0:
		v.y=0
	if moveX1 == false && v.x <=0:
		v.x=0
	if moveX2 == false && v.x >=0:
		v.x=0
	if moveY == false && v.y <=0:
		v.y=0
	position+=v
	
func _on_conan_area_entered(area):
	if area.name == "wife":
		InfoWife.show()
	else:
		InfoWife.hide()
	if area.name == "wall2":
		moveX2=false
		InfoTable.show()
		
	else:
		moveX2=true
		InfoTable.hide()
		
	if area.name == "to_hall":
		get_tree().change_scene("dinnerRoom.tscn")
	if area.name == "bedX":
		
		moveX1 = false
	else :
		moveX1 = true
		
	if area.name == "wall":
		
		moveX2 = false
	else :
		moveX2 = true
		
	if area.name == "bedY":
		
		moveY = false
		InfoBed.show()
	else :
		moveY = true
		InfoBed.hide()
	
	pass # Replace with function body.

 # Replace with function body.


func _on_Button2_pressed():
	get_tree().change_scene("BED.tscn")
	goabal_var.Bed+=1
	
	
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().change_scene("Wife.tscn")
	
	pass # Replace with function body.


func _on_Button3_pressed():
	get_tree().change_scene("Table.tscn")
	goabal_var.Table+=1
	
	pass # Replace with function body.
