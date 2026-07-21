extends logicComponent
class_name xorGate

func _init() -> void:
	super(2, 1) # 2 inputs, 1 output

func evaluate() -> void:
	outputs[0] = ( inputs[0] and not inputs[1] ) or ( not inputs[0] and inputs[1] )
