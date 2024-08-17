extends CharacterBody2D


const SPEED = 300
const JUMP_VELOCITY = -800
var spawn

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	spawn = self.position

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	if is_on_floor():
		gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("left", "right")
	
	if Input.is_action_just_pressed("left"):
		$sprite.flip_h = true
	elif Input.is_action_just_pressed("right"):
		$sprite.flip_h = false
	
	if Input.is_action_just_pressed("slam"):
		gravity += 30000
	
	if direction:
		velocity.x = direction * SPEED * 2
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED/3.5)

	move_and_slide()

func die():
	self.position = spawn
