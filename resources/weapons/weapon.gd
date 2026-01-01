class_name Weapon extends Resource


@export var name: String = ""
@export var sprite: Texture = null
@export var base_damage: float = 0.0
@export var base_attack_speed: float = 0.0


func attack(source: Entity) -> void:
	pass
