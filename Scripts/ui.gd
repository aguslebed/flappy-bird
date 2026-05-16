extends CanvasLayer


func _ready() -> void:
	Global.connect("on_sumar_punto", cambiar_puntaje)
	Global.connect("on_start_game", start_game)
	Global.connect("on_game_over", mostrar_game_over)
	$CanvasLayerGameOver.hide()
	$Message.show()
	get_tree().paused = false

func cambiar_puntaje():
	$Puntaje.text = str(Global.score)

func start_game():
	$Message.visible = false

func mostrar_game_over():
	$CanvasLayerGameOver.show()
	await get_tree().create_timer(2).timeout
	get_tree().reload_current_scene()
