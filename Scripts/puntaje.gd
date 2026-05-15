extends CanvasLayer


func _ready() -> void:
	Global.connect("on_sumar_punto", cambiar_puntaje)

func cambiar_puntaje():
		$Label.text = str(Global.score)
