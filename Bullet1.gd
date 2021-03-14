extends Area2D

var speed = 2
var velocity = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 
	
func _physics_process(_delta):
	position += velocity
	velocity.y -= speed
	if position.y < -20:
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Bullet1_body_entered(body):
	body.die()
	queue_free()
