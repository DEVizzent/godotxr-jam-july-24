extends XRToolsSceneBase

@export var puntuacion_minima_victoria = 50
@export_file('*.tscn') var nextLevel: String = "res://scenes/Niveles/tuto.tscn"
var level_completed:bool = false
func _ready() -> void:
	EventBus.puntuacion_actualizada.connect(comprobarVictioria)
	EventBus.next_level_requested.connect(goNextLevel)

func comprobarVictioria(puntuacion:int) -> void:
	if (puntuacion >= puntuacion_minima_victoria) && !level_completed:
		level_completed = true
		EventBus.puntuacion_minima_victoria_conseguida.emit()
		abrirflores()
		$AudioStreamPlayer.play()

func abrirflores():
	for flor in get_tree().get_nodes_in_group("nenufar"):
		await get_tree().create_timer(randf_range(0,1)).timeout
		flor.abrirFlor()

func goNextLevel()->void:
		load_scene(nextLevel)
	
