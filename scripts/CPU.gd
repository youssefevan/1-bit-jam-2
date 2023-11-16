extends CharacterBody2D
class_name CPU

@export var puck : Puck

var fric = 3
var can_move = true

func _physics_process(delta):
	if abs(global_position.y - puck.global_position.y) < 150 and can_move:
		var target_position = lerp(global_position.x, puck.global_position.x, fric * delta)
		global_position.x = clamp(target_position, 64, 224)

func pause():
	can_move = false
	await get_tree().create_timer(.1).timeout
	can_move = true
