extends RefCounted
class_name wire

var idFrom: int
var portFrom: int
var idTo: int
var portTo: int

func _init(idF: int, portF: int, idT: int, portT: int) -> void:
	idFrom = idF
	portFrom = portF
	idTo = idT
	portTo = portT
