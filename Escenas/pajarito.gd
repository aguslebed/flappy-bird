extends CharacterBody2D

class_name Pajaro

const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if Global.startGame == true:
		# Add the gravity.
		if not is_on_floor():
			velocity += get_gravity() * delta

		# Handle jump.
		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = JUMP_VELOCITY
			rotation = deg_to_rad(-30)
			$AudioSalto.play()
		move_and_slide()
		rotar_pajaro()
		
func rotar_pajaro():
	if velocity.y > 0 and deg_to_rad(rotation) < 90:
		rotation += 2 * deg_to_rad(1)
	elif velocity.y > 0 and deg_to_rad(rotation) > -30:
		rotation -= 2 * deg_to_rad(1)
