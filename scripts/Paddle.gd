extends CharacterBody2D
class_name Paddle

var fric = 8
var can_move = true

func _physics_process(delta):
	if can_move:
		var target_position = lerp(global_position.x, get_global_mouse_position().x, fric * delta)
		global_position.x = clamp(target_position, 64, 224)

func pause():
	can_move = false
	await get_tree().create_timer(.1).timeout
	can_move = true
