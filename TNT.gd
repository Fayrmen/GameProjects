extends StaticBody2D

signal click

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_Control_gui_input(ev):
	if ev.is_action_pressed("click"):
		emit_signal("click")
