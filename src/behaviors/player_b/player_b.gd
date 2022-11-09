extends Node
@export_node_path var MoveDirectionNode_p
var MoveDirectionNode : Node = null

func _ready():
	load_nodes()
	pass 


func _physics_process(delta):
	if Input.is_action_just_pressed("MOVE_LEFT") || Input.is_action_just_pressed("MOVE_RIGHT"):
		var aput = {
			direction = Vector2(0,0),
			duration = 0.0
		}
		aput.direction.x = Input.get_action_strength("MOVE_LEFT") -Input.get_action_strength("MOVE_RIGHT")
		MoveDirectionStart(aput)
	
	if Input.is_action_just_released("MOVE_LEFT") || Input.is_action_just_released("MOVE_RIGHT"):
		var aput = Aputs.new()
		aput.direction.x = Input.get_action_strength("MOVE_LEFT") -Input.get_action_strength("MOVE_RIGHT")
		MoveDirectionStart(aput)
	pass

func load_nodes():
	MoveDirectionNode = self.get_node(MoveDirectionNode_p)




func MoveDirectionStart(aput: Aput):
	MoveDirectionNode.start_action(aput)
	pass

func MoveDirectionEnd(aput: Aput):
	MoveDirectionNode.start_action(aput)
	pass
