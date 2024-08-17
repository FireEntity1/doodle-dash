extends Node2D

var level

func _ready():
	level = int(str(get_tree().current_scene.name))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_body_entered(body):
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://levels/level"+ str(level+1) + ".tscn")

