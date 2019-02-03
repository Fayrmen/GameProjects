extends RigidBody2D

signal contact

var map
var _last_tile_id = null

func _ready():
    # Called when the node is added to the scene for the first time.
    # Initialization here
    pass

func _integrate_forces(state):
    for i in range(get_colliding_bodies().size()):
        var pos = state.get_contact_local_position(i)
        
        pos = Vector2((pos.x-map.position.x)/map.scale.x, (pos.y-map.position.y)/map.scale.y)
        var tile_pos = map.world_to_map(pos)
        var tile = map.get_cellv(tile_pos)
        if _last_tile_id != tile:
            _last_tile_id = tile
            var body_name = map.get_tileset().tile_get_name(tile)
            print(body_name)
            emit_signal("contact", body_name)
            
            
        #print()
        
func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
    #for body in get_colliding_bodies():
    #    print(body.position)
    #    var tile = map.get_cellv(map.world_to_map(body.position))
    #    print(tile)
    pass

func bang(vect):
    apply_impulse(Vector2(), vect*200)
    #get_tree().change_scene("res://levels/lvl2.tscn")

