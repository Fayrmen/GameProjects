extends Node
export (PackedScene) var Ball

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

#func _on_TNT_click():
#	print('Big Bang!')
#	var vect = Vector2(100/($Ball.position.x - $TNT.position.x + 0.001),
#					   100/($Ball.position.y - $TNT.position.y));
#	$Ball.bang(vect)


func _on_TNT_click():
	print('Bang! TNT')

	var len_vect = sqrt(($Ball.position.x - $TNT.position.x)*($Ball.position.x - $TNT.position.x) +
						($Ball.position.y - $TNT.position.y)*($Ball.position.y - $TNT.position.y))

	var norm = ($Ball.position - $TNT.position).normalized();

	var q1 = -len_vect+500
	if q1 >= 0:
		print(log(q1))
		var vect = Vector2(log(q1)*norm.x,
		log(q1)*norm.y)
		
		$Ball.bang(vect)
	else:
		print('мяч далеко')

func _on_TNT2_click():
	print('Bang! TNT2')

	var len_vect = sqrt(($Ball.position.x - $TNT2.position.x)*($Ball.position.x - $TNT2.position.x) +
						($Ball.position.y - $TNT2.position.y)*($Ball.position.y - $TNT2.position.y))
	var norm = ($Ball.position - $TNT2.position).normalized();


	var q1 = -len_vect+500;
	if q1 >= 0:
		
		print(log(q1))
		
		var vect = Vector2(log(q1)*norm.x,
		log(q1)*norm.y)
		
		$Ball.bang(vect)
	else:
		print('мяч далеко2')

func _on_Ball_body_entered(body):
	print(body)