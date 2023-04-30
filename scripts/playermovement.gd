extends KinematicBody2D

export (int) var speed = 500

var velocity = Vector2()
var facing = "right"
var moving = false
var sneaking = false
export var movable = true

func get_input():
	velocity = Vector2()
	if movable == true:
		if Input.is_action_pressed("right"):
			if Input.is_action_pressed("sneak"):
				velocity.x += .5
				facing = "right"
				sneaking = true
			else:
				velocity.x += 1
				facing = "right"
				sneaking = false
		if Input.is_action_pressed("left"):
			if Input.is_action_pressed("sneak"):
				velocity.x -= .5
				facing = "left"
				sneaking = true
			else:	
				velocity.x -= 1
				facing = "left"
				sneaking = false
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

func _process(delta):
	if movable == true:
		if Input.is_action_pressed("right") or Input.is_action_pressed("left"):
			moving = true
		else:
			moving = false
