extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Emily_pressed():
	get_tree().change_scene("Emily.tscn")
	pass # Replace with function body.



func _on_Micheal_pressed():
	get_tree().change_scene("Micheal.tscn")
	pass # Replace with function body.


func _on_Robert_pressed():
	get_tree().change_scene("Robert.tscn")
	pass # Replace with function body.
