extends Node
export (PackedScene) var Ball

const TNT_explode_radius = 500

func _ready():
    # Called when the node is added to the scene for the first time.
    # Initialization here
    pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_TNT_explode(TNT_position):
    var len_vect = sqrt(($Ball.position.x - TNT_position.x)*($Ball.position.x - TNT_position.x) +
                        ($Ball.position.y - TNT_position.y)*($Ball.position.y - TNT_position.y))

    var norm = ($Ball.position - TNT_position).normalized();

    var calc_range = -len_vect+TNT_explode_radius
    if calc_range >= 0:
        var vect = Vector2(log(calc_range)*norm.x, log(calc_range)*norm.y)
        $Ball.bang(vect)

func _on_Ball_body_entered(body):
    if (body.is_in_group("die")):
        
        $HUD.show_panel_fail()
    

    
    
    #emit_signal("hit")
        #$CollisionShape2D.call_deferred("set_disabled", true)
