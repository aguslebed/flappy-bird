extends Node

var score = 0
signal on_sumar_punto

func sumar_punto():
	score += 1
	on_sumar_punto.emit()
