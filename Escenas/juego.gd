extends Node2D
@export var escena_tuberias: PackedScene

func _ready() -> void:
	$Timer        .start()
	
func crear_tuberias():
	var tuberias = escena_tuberias.instantiate()
	add_child(tuberias)


func _on_timer_timeout() -> void:
	crear_tuberias()
