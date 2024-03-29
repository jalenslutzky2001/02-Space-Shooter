extends KinematicBody2D

var Enemy_Bullet = load("res://Bullet/Enemy/Enemy_Bullet.tscn")
onready var Bullets = get_node("/root/Game/Bullets")
var speed = 2
var ready_to_move = true

func  _ready():
	randomize()
func _physics_process(_delta):
	pass
	
func die():
	queue_free()


func _on_Shoot_timeout():
	if randf() < 0.2 and ready_to_move:
		var enemy_bullet = Enemy_Bullet.instance()
		enemy_bullet.postion = position 
		Bullets.add_child(enemy_bullet)


func _on_Move_timeout():
	var new_position = Vector2(randi() % 1024,randi() % 500)
	$Tween.interpolate_property(self, "position", position, new_position, speed. Tween.TRANS_LINEAR, Tween.EASE_IN_OUT )
	$Tween.start()
	ready_to_move = false


func _on_Tween_tween_all_completed():
	ready_to_move = true
