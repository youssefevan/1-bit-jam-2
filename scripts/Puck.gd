extends CharacterBody2D
class_name Puck

var move_angle = Vector2(1, 1).normalized()
var speed = 250

func _physics_process(delta):
	velocity = move_angle.normalized() * speed * delta
	var col = move_and_collide(velocity)
	if col:
		move_angle = velocity.bounce(col.get_normal())
		if col.get_collider() is Paddle:
			col.get_collider().pause()
