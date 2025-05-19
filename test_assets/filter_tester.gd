@tool
extends Node2D


const FilterRenderer = preload("res://addons/waterways/filter_renderer.tscn")

@export var apply_filter: bool = false: set = set_apply_filter

@export var input1: Texture2D
@export var input2: Texture2D
@export var output: Texture2D


func set_apply_filter(value : bool) -> void:
	apply_filter = false
	print("in apply filter")
	var filter_renderer = FilterRenderer.instantiate()
	add_child(filter_renderer)
	
	output = await filter_renderer.apply_dilate(input1, 0.1, 0.0, 512.0).completed
	
	remove_child(filter_renderer)
