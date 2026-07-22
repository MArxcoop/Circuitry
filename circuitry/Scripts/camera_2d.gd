extends Camera2D

@export var pan_speed: float = 2000.0
@export var zoom_speed: float = 0.1
@export var min_zoom: float = .075
@export var max_zoom: float = .75

func _process(delta: float) -> void:
	# Pan camera using Middle Mouse Button drag or WASD/Arrow keys
	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	position += input_dir * pan_speed * delta

func _unhandled_input(event: InputEvent) -> void:
	# Smoothly handle mouse wheel zooming
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			zoom = (zoom + Vector2(zoom_speed, zoom_speed)).clamp(Vector2(min_zoom, min_zoom), Vector2(max_zoom, max_zoom))
		elif event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			zoom = (zoom - Vector2(zoom_speed, zoom_speed)).clamp(Vector2(min_zoom, min_zoom), Vector2(max_zoom, max_zoom))
