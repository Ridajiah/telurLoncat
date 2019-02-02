extends KinematicBody2D

var rida = Vector2()

func _physics_process(delta):
	rida.y += 20
	if Input.is_action_pressed("ui_right"):
		rida.x = 100
	elif Input.is_action_pressed("ui_left"):
		rida.x = -100
	else:
		rida.x= 0

	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			rida.y= -550
	
	move_and_slide(rida)
	pass
	
	