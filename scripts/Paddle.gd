extends CharacterBody2D
class_name Paddle

@export var puck : Puck
@export var is_cpu := false

var target

var fric = 10
var can_move = true

var target_position

func _physics_process(delta):
	if is_cpu:
		fric = 3
		if abs(global_position.y - puck.global_position.y) < 180 and can_move:
			target_position = lerp(global_position.x, puck.global_position.x, fric * delta)
			global_position.x = clamp(target_position, 32, 256)
	else:
		if can_move:
			target_position = lerp(global_position.x, get_global_mouse_position().x, fric * delta)
			global_position.x = clamp(target_position, 32, 256)
		

func pause():
	can_move = false
	await get_tree().create_timer(.1).timeout
	can_move = true
