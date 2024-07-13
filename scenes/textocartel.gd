extends MeshInstance3D

signal reset_message_showed()

var puntuacion:int = 0
var puntuacionObjetivo:int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.canica_salida.connect(actualizaPuntuacion)
	var nodeBase = get_tree().get_nodes_in_group("nivel").front()
	puntuacionObjetivo = nodeBase.puntuacion_minima_victoria
	cambioTexto()
	
func actualizaPuntuacion(valorCanica:int)->void:
	puntuacion += valorCanica
	EventBus.emit_signal(EventBus.PUNTUACION_ACTUALIZADA, puntuacion)
	cambioTexto()
	
func cambioTexto()->void:
	var nodeBase = get_tree().get_nodes_in_group("nivel").front()
	$Label3D.text = "Score: " + str(puntuacion) + "\n Score to next level: "+str(puntuacionObjetivo)
	if puntuacion >= puntuacionObjetivo:
		$Label3D.text += "\n  [Press to go to next level]"
