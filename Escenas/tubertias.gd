extends Node2D

var velocidad = 150
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = 320
	z_index = 10
	position.y = randi_range(100, 330)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * velocidad


func fuera_de_la_pantalla() -> void:
	queue_free() # Replace with function body.


func _choque_con_pajaro(body: Node2D) -> void:
	if body is Pajaro:
		print('Choco el pajaro!')


func _pajaro_punto(body: Node2D) -> void:
	if body is Pajaro:
		Global.sumar_punto()
		
