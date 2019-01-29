extends Node

func _ready():
    print('_ready')

func start_level(id):
    get_tree().change_scene("res://levels/lvl%s.tscn" % id)
    
    #score = 0
    #$Player.start($StartPosition.position)
    #$StartTimer.start()