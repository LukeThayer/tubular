extends Node
var parent: Node = null

func _ready():
	parent = self.get_parent()



func start_action(aput:Aput):
	parent.CurrentDirection = aput.direction
	pass

func end_action():
	parent.CurrentDirection = Vector2(0,0)
	pass

