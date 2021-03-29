extends CanvasLayer

func _process(delta):
	$puntuacion.text="Monedes: " + str(Globalvar.puntos)
