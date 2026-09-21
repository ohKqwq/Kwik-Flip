class_name Player extends CharacterBody2D
const SPEED = 300.0
const JUMP_VELOCITY = -500.0

var has_double_jumped: bool = false


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		has_double_jumped = false

	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
			Audiocontroller.play_jump()
		elif not has_double_jumped:
			velocity.y = JUMP_VELOCITY
			has_double_jumped = true
			Audiocontroller.play_jump()

	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
var starting_position: Vector2
func _ready() -> void:
	starting_position = position

func die() -> void:
	position = starting_position
