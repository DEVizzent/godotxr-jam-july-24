extends XRToolsSceneBase

@export var puntuacion_minima_victoria = 50
@export_file('*.tscn') var nextLevel: String = "res://scenes/Niveles/tuto.tscn"
func _ready() -> void:
	EventBus.puntuacion_actualizada.connect(comprobarVictioria)

func comprobarVictioria(puntuacion:int) -> void:
	if (puntuacion >= puntuacion_minima_victoria):
		load_scene(nextLevel)
