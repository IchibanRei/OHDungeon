extends KinematicBody2D

const SPEED = 100
var motion = Vector2(0, 0)

func _process(delta):
	move()
	move_and_slide(motion)


func move():
	if Input.is_action_pressed("Left") and not Input.is_action_pressed("Right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("Right")and not Input.is_action_pressed("Left"):
		motion.x = SPEED
	elif Input.is_action_pressed("Up") and not Input.is_action_pressed("Down"):
		motion.y = -SPEED
	elif Input.is_action_pressed("Down") and not Input.is_action_pressed("Up"):
		motion.y = SPEED
	else:
		motion.x = 0
		motion.y = 0