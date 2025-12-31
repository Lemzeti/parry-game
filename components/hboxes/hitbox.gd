class_name Hitbox extends Area2D
# SHOULD HAVE COLLISION CHILD OUT OF SCENE !!! or it won't work, obviously


var damage: float = 0.0 ## Inherited from weapon/entity parent


func _on_hurtbox_entered(area: Hurtbox) -> void:
	pass # Replace with function body.
