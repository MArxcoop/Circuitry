extends Path2D

# Sets line variable to be a Line2D node connected to a Line2D child 
@onready var line: Line2D = $Line2D
const BUTTON :PackedScene= preload("res://Scenes/wireButton.tscn")
var toggle : bool = false
var mouseInArea : bool = false

var pointCount : int
var pointPosition : Vector2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("leftMouseButton") and toggle and mouseInArea:
		line.add_point(get_global_mouse_position())
		pointPosition = line.get_point_position(pointCount)
		print(pointPosition)
		var button = BUTTON.instantiate()
		add_child(button)
		button.global_position = Vector2(pointPosition)
		
		pointCount += 1
		

func _draw() -> void:
	for pos in pointPosition:
		draw_circle(Vector2(line.get_point_position(pointCount)), 5, Color.RED)


func _on_check_button_toggled(toggled_on: bool) -> void:
	toggle = toggled_on


func _on_placement_area_mouse_entered() -> void:
	mouseInArea = true


func _on_placement_area_mouse_exited() -> void:
	mouseInArea = false
