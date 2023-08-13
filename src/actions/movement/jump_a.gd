
extends Node
var parent: Node = null

func _ready():
	parent = self.get_parent()


func start_action(aput:Aput):
	parent.apply_jump()
	pass

func end_action():
	pass


