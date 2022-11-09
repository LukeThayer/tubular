extends Node
var nodeToMove: CharacterBody2D = null

func start_action(aput:Aput):
	dir = aput.direction
	pass

func end_action():
	pass

var dir : Vector2 = Vector2(0,0)

func _physics_process(delta):
	nodeToMove.velocity = dir * 1000
	nodeToMove.move_and_slide()


func init(node:CharacterBody2D):
	nodeToMove = node
	pass
