extends Area3D


func _ready() -> void:
	connect("body_entered", Callable(self, "on_body_entered"))

func on_body_entered(body) -> void:
	if body is RigidBody3D:
		body.queue_free()
