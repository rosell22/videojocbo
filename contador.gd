extends CanvasLayer

func _process(delta):
	$puntuacion.text="Monedas: " + str(Globalvar.puntos)
