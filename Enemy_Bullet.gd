extends Area2D

var speed = .5
var velocity = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	pass 
	
func _physics_process(_delta):
	position += velocity
	velocity.y += speed
	if position.y > 620:
		queue_free()



func _on_Enemy_Bullet_body_entered(body):
	body.die()
	queue_free()
		
	
