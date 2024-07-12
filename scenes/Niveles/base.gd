extends XRToolsSceneBase

@export var puntuacion_minima_victoria = 50
@export_file('*.tscn') var nextLevel: String = "res://scenes/Niveles/tuto.tscn"
func _ready() -> void:
	EventBus.puntuacion_actualizada.connect(comprobarVictioria)

func comprobarVictioria(puntuacion:int) -> void:
	if (puntuacion >= puntuacion_minima_victoria):
		abrirflores()
		await get_tree().create_timer(5).timeout
		load_scene(nextLevel)

func abrirflores():
	for flor in get_tree().get_nodes_in_group("nenufar"):
		await get_tree().create_timer(randf_range(0,1)).timeout
		flor.abrirFlor()
