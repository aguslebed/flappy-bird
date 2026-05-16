extends Node

var score = 0
var startGame = false

signal on_sumar_punto
signal on_game_over
signal on_start_game

func sumar_punto():
	score += 1	
	on_sumar_punto.emit()

func start_game():
	startGame = true
	score = 0
	on_start_game.emit()
	
func game_over():
	get_tree().paused = true
	startGame = false
	on_game_over.emit()
	
