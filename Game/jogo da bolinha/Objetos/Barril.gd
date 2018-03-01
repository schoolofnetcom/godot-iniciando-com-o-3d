extends KinematicBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export var rotacao = 30
var colisao

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	
	colisao = move_and_collide(Vector3(0,0,0))
	
	if colisao:
		queue_free()
		
	rotate_x(deg2rad(rotacao * delta))
	rotate_y(deg2rad(rotacao * delta))
	rotate_z(deg2rad(rotacao * delta))
	
	pass
