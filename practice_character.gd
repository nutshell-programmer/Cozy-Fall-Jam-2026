extends CharacterBody2D

var speed = 400
var jump_speed = -600
var gravity = 12

func _physics_process(delta):
	
	if not is_on_floor():
		velocity.y += gravity
		
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = jump_speed
		
	var direction = Input.get_axis("Left", "Right")
	
	if direction == -1:
		velocity.x = -1 * speed
	elif direction == 1:
		velocity.x = speed
	else:
		velocity.x = 0
		
	move_and_slide()
