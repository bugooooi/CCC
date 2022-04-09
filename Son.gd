extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var PopQ3
var PopQ4
var PopQ5
var PopQ6
var PopQ7
# Called when the node enters the scene tree for the first time.
func _ready():
	PopQ3 = get_node("Q3")
	PopQ4 = get_node("Q4")
	PopQ5 = get_node("Q5")
	PopQ6 = get_node("Q6")
	PopQ7 = get_node("Q7")
	if goabal_var.Bed >=1:
		PopQ4.show()
		PopQ3.show()
	if goabal_var.wife >=1:
		PopQ5.show()
	if goabal_var.butler >=1:
		PopQ6.show()
	if goabal_var.bottle >=1:
		PopQ7.show()
	pass # Replace with function body.

func _on_Q1_pressed():
	get_tree().change_scene("SQ1.tscn")
	goabal_var.son+=1
	pass # Replace with function body.
func _on_Q2_pressed():
	get_tree().change_scene("SQ2.tscn")
	pass # Replace with function body.
func _on_Q3_pressed():
	get_tree().change_scene("SQ3.tscn")
	pass # Replace with function body.
func _on_Q4_pressed():
	get_tree().change_scene("SQ4.tscn")
	pass # Replace with function body.
func _on_Q5_pressed():
	get_tree().change_scene("SQ5.tscn")
	pass # Replace with function body.
func _on_Q6_pressed():
	get_tree().change_scene("SQ6.tscn")
	pass # Replace with function body.
func _on_Q7_pressed():
	get_tree().change_scene("SQ7.tscn")
	pass # Replace with function body.
