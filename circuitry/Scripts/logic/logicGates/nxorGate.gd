extends logicComponent
class_name nxorGate

func _init() -> void:
	super(2, 1) # 2 inputs, 1 output

func evaluate() -> void:
	outputs[0] = ( not ( inputs[0] and inputs[1] ) ) or ( inputs[0] and inputs[1] )
