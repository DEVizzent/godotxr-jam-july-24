extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false
	EventBus.puntuacion_minima_victoria_conseguida.connect(activateNextLevelButton)
	
func activateNextLevelButton()-> void:
	visible = true
	$InteractableAreaButton.monitoring = true

func _on_interactable_area_button_button_released(button: Variant) -> void:
	EventBus.next_level_requested.emit()
