extends Node

onready var body = get_parent()

export (int) var speed = 100
export (int) var jump_speed = 200
export (int) var gravity = 500

var velocity = Vector2.ZERO

func _physics_process(delta):
	apply_gravity(delta)
	apply_controller_movement()
	move()


func apply_controller_movement():
	velocity = $Controller.get_input(Vector2(0, velocity.y))


func apply_gravity(delta):
	if !body.is_on_floor():
		if velocity.y<600:
			velocity.y += gravity * delta

func move():
	body.move_and_slide(velocity, Vector2.UP)


func is_moving_right() -> bool:
	return velocity.x > 0


func is_moving_left() -> bool:
	return velocity.x < 0


func is_moving_horizontally() -> bool:
	return velocity.x != 0