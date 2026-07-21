extends logicComponent
class_name notGate

func _init() -> void:
	super(1, 1) # 1 input, 1 output

func evaluate() -> void:
	outputs[0] = not inputs [0]
