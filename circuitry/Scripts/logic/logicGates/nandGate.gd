extends logicComponent
class_name nandGate

func _init() -> void:
	super(2, 1) # 2 inputs, 1 output

func evaluate() -> void:
	outputs[0] = not ( inputs[0] and inputs[1] )
