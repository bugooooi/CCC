extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Q1_pressed():
	get_tree().change_scene("WQ1.tscn")
	pass # Replace with function body.
func _on_Q2_pressed():
	get_tree().change_scene("WQ2.tscn")
	pass # Replace with function body.
	
func _on_Q3_pressed():
	if get_node("TEST").get("Table") == 1:
		get_tree().change_scene("WQ3.tscn")
	elif get_node("TEST").get("Table") == 0:
		get_tree().change_scene("Wife.tscn")
	pass
	
func _on_Q4_pressed():
	get_tree().change_scene("WQ4.tscn")
	pass # Replace with function body.
func _on_Q5_pressed():
	get_tree().change_scene("WQ5.tscn")
	pass # Replace with function body.
func _on_Q6_pressed():
	get_tree().change_scene("WQ6.tscn")
	pass # Replace with function body.
func _on_Q7_pressed():
	get_tree().change_scene("WQ7.tscn")
	pass # Replace with function body.
