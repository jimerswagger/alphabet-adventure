extends CharacterBody2D

@onready var _animation_player = $AnimationPlayer


const SPEED = 250.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta):
	#_animated_sprite.play("idle")
	#_animation_player.play("idle")
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		#_animated_sprite.play("run") #used for when using animations with animatedsprite2d
		$Sprite2D.flip_h = int(direction-1)
		_animation_player.play("run")
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		_animation_player.play("idle")

	move_and_slide()
