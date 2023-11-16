extends Area2D

func _physics_process(delta):
	global_position.x = clamp(get_global_mouse_position().x, 64, 224)
