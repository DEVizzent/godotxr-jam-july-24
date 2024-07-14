extends StaticBody3D

func _on_interactable_area_button_button_released(button: Variant) -> void:
	get_tree().quit()
