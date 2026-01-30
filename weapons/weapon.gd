class_name Weapon extends Resource


@export var weapon_name: String = ""
@export var weapon_sprite: Texture = null

@export_group("Stat Multipliers")
@export var damage: float = 1.0 ## Higher = stronger
@export_range(0.0, 2.0, 0.01) var attack_speed: float = 1.0 ## Less = faster
# ^^^ Should very much change how this works ^^^


func apply_multipliers(entity: Entity) -> void:
	entity.damage *= damage
	entity.attack_speed *= attack_speed


func attack(attacker: Entity) -> void:
	pass
