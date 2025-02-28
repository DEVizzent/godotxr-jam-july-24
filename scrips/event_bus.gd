extends Node
class_name EventBusScript

const CANICA_SALIDA = "canica_salida"
const PUNTUACION_ACTUALIZADA = "puntuacion_actualizada"

signal canica_salida(valorCanica:int)
signal puntuacion_actualizada(puntuacion:int)
signal puntuacion_minima_victoria_conseguida()
signal next_level_requested()
