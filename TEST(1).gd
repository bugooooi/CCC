extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Table=0
var Death=0
var Bottle=0
var Son=0
var Butler=0
var Wife=0
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _on_WIFE_pressed():
	Wife=1
	get_tree().change_scene("Wife.tscn")
	pass # Replace with function body.


func _on_SON_pressed():
	Son=1
	get_tree().change_scene("Son.tscn")
	pass # Replace with function body.


func _on_Butler_pressed():
	Butler=1
	get_tree().change_scene("Butler.tscn")
	pass # Replace with function body.


func _on_Death_pressed():
	Death=1
	get_tree().change_scene("BED.tscn")
	pass # Replace with function body.


func _on_Table_pressed():
	Table=1
	get_tree().change_scene("Table.tscn")
	pass # Replace with function body.


func _on_Counter_pressed():
	Bottle=1
	get_tree().change_scene("Bottle.tscn")
	pass # Replace with function body.
