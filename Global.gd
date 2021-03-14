extends Node


var score = 0


# Called when the node enters the scene tree for the first time.
func _physics_process(_delta):
	if Input.is_action_pressed("Quit"):
		get_tree().quit()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
