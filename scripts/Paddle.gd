extends RigidBody2D

func _physics_process(delta):
	if (global_position - get_global_mouse_position()).length() > 7:
		var dir = (global_position - get_global_mouse_position()).normalized() * 1000
		apply_central_impulse(-dir)
