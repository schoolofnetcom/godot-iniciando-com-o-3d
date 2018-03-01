extends KinematicBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var direcao = Vector3()
export var velocidade = 15
export var gravidade = 3
var dir = Vector3(0,0,0)
export var alturaDoSalto = 10

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	direcao = Vector3(0,0,0)
	if Input.is_action_pressed("cima"):
		direcao.z = -1
	if Input.is_action_pressed("baixo"):
		direcao.z = 1
	if Input.is_action_pressed("direita"):
		direcao.x = 1
	if Input.is_action_pressed("esquerda"):
		direcao.x = -1
	
	direcao = direcao * velocidade	
	
	dir.y += -9.8 * delta * gravidade
	dir.x = direcao.x
	dir.z = direcao.z
	
	dir = move_and_slide(dir, Vector3(0,1,0))
	
	print(is_on_floor())
	
	if Input.is_action_pressed("espaco") && is_on_floor():
		## Isso aqui faz ele pular
		dir.y = alturaDoSalto
	pass
