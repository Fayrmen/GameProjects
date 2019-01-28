extends RigidBody2D

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func bang(vect):
	print(vect)
	apply_impulse(Vector2(), vect*200)
	get_tree().change_scene("res://levels/lvl2.tscn")

