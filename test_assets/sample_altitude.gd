@tool
extends Node3D


@export var check_alt = false: set = set_check_alt

func set_check_alt(value : bool) -> void:
	var water_sys = get_parent().get_node("WaterSystem")
	var alt = water_sys.get_water_altitude(position)
	var flow = water_sys.get_water_flow(position)
	print("alt is: ", alt)
	print("flow is: ", flow)
