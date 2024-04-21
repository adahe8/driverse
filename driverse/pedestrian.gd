extends CharacterBody2D 

const SPEED = 300.0
const ACCELERATION = 200.0
const FRICTION = 500
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	var input_vector = Vector2.ZERO
	input_vector = input_vector.normalized()
	
	if input_vector!=Vector2.ZERO:
		velocity = velocity.move_toward(input_vector*SPEED, ACCELERATION*delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION*delta)

	move_and_slide()
