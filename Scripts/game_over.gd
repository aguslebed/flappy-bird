extends CanvasLayer

func _ready() -> void:
	Global.connect("on_game_over", mostrar_game_over)

func mostrar_game_over():
	$".".visible = true
