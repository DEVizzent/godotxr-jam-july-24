extends Label

var puntuacion:int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	EventBus.canica_salida.connect(actualizaPuntuacion)
	text = str(puntuacion)
	
func actualizaPuntuacion(valorCanica:int)->void:
	puntuacion += valorCanica
	text = str(puntuacion)
	EventBus.emit_signal(EventBus.PUNTUACION_ACTUALIZADA, puntuacion)



