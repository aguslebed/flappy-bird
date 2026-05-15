extends Node

var score = 0
signal on_sumar_punto
signal on_game_over

func sumar_punto():
	score += 1
	on_sumar_punto.emit()

func game_over():
	on_game_over.emit()
	get_tree().paused = true
	
