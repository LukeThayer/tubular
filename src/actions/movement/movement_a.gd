@export_node_path var nodeToMove_p


func _ready():
	load_node(nodeToMove_p)
	pass 





func load_node(path : NodePath):
	var nodeToMove: CharacterBody2D = self.get_node(path)
	for n in self.get_children():
		n.init(nodeToMove)
	
