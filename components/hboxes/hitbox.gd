class_name Hitbox extends Area2D
# SHOULD HAVE COLLISION CHILD OUT OF SCENE !!! or it won't work, obviously


@export var actor: Node2D:
	get:
		if not actor:
			actor = get_parent()
		return actor


var damage: float = 0.0 ## Inherited from weapon/entity parent, probably


func _ready() -> void:
	damage = actor.damage

	if not is_connected("_on_area_entered", Callable(self, "_on_hurtbox_entered")):
		connect("_on_area_entered", Callable(self, "_on_hurtbox_entered"))


func _on_hurtbox_entered(hurtbox: Hurtbox) -> void:
	print("%s sent damage" % actor.name)
	hurtbox.apply_damage(damage)
