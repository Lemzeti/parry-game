class_name MeleeWeapon extends Weapon


@export var swing_strength: float = 0.0
@export var swing_speed: float = 0.0


func attack(attacker: Entity) -> void:
	_swing()

a
func _swing() -> void:
	pass
