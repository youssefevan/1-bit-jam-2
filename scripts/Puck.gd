extends CharacterBody2D

var move_angle = Vector2(1, 1)
var speed = 300

func _physics_process(delta):
	velocity = move_angle.normalized() * speed * delta
	var col = move_and_collide(velocity)
	if col:
		move_angle = velocity.bounce(col.get_normal())
