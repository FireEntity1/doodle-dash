extends Node2D
var platform = preload("res://components/platform.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			spawnPlatform(event.position)
			
func spawnPlatform(position):
	var instance = platform.instantiate()
	instance.position = position
	add_child(instance)
