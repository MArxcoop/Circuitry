extends RefCounted
class_name logicComponent 

var id: int
var inputs: Array[bool] = []
var outputs: Array[bool] = []

func _init(inCount: int, outCount: int) -> void:
	inputs.resize(inCount)
	inputs.fill(false)
	outputs.resize(outCount)
	outputs.fill(false)

func evaluate() -> void:
	pass
