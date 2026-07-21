extends RefCounted
class_name curcuitManager

var components: Dictionary = {} # Maps ID (int) -> LogicComponent
var wires: Array[wire] = []
var nextId: int = 0

#Adds a component and returns its ID
func addComponent(comp: logicComponent) -> int:
	comp.id = nextId
	components[nextId] = comp
	nextId += 1
	return comp.id

# Connects two components
func add_wire(idF: int, portF: int, idT: int, portT: int) -> void:
	var newWire = wire.new(idF, portF, idT, portT)
	wires.append(newWire)

# The core simulation loop
func tick() -> void:
	# PHASE 1: Evaluate
	# Every component calculates its outputs based on its CURRENT inputs.
	for comp in components.values():
		comp.evaluate()
		
	# PHASE 2: Propagate
	# Push the newly calculated outputs across the wires into the inputs
	# of connected components, readying them for the NEXT tick.
	for wire in wires:
		var source = components.get(wire.idF)
		var target = components.get(wire.idT)
		
		if source and target:
			target.inputs[wire.portT] = source.outputs[wire.portF]
