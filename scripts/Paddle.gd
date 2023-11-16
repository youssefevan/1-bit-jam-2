extends CharacterBody2D

var fric = 8

func _physics_process(delta):
	var target_position = lerp(global_position.x, get_global_mouse_position().x, fric * delta)
	global_position.x = clamp(target_position, 64, 224)
