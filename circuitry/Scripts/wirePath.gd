extends Path2D

# Sets line variable to be a Line2D node connected to a Line2D child 
@onready var line: Line2D = $Line2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("leftMouseButton"):
		line.add_point(get_global_mouse_position())
