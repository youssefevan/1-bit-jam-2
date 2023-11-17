extends Area2D


func _physics_process(delta):
	pass


func _on_body_entered(body):
	die()

func die():
	call_deferred("queue_free")
