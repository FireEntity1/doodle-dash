extends Node2D

var ball = preload("res://components/ball.tscn")
var pos = self.position

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func spawnBall(position):
	var instance = ball.instantiate()
	instance.position = position
	add_child(instance)


func _on_timer_timeout():
	spawnBall(pos)
	$Timer.start(1.5)
