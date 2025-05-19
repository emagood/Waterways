extends Node
@onready var text = $Label


func _process(delta: float) -> void:
	text.text = str(Engine.get_frames_per_second())
	
