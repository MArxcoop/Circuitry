extends Node2D

const gridSize = 64

func getSnapMousePos() -> Vector2:
	var mouse_pos: Vector2 = get_global_mouse_position()
	return mouse_pos.snapped(Vector2(gridSize, gridSize))
