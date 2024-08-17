extends Node2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y += gravity*delta*0.5


func _on_area_body_entered(body):
	if body is CharacterBody2D:
		body.die()
