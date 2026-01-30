class_name RangedWeapon extends Weapon


@export var projectile_scene: PackedScene = preload("res://weapons/ranged/projectiles/projectile.tscn")


var projectiles_group: Node2D = null


func attack(attacker: Entity) -> void:
	_shoot(attacker)


func _shoot(attacker: Entity) -> void:
	if projectiles_group == null:
		projectiles_group = attacker.get_tree().get_first_node_in_group("ProjectilesGroup")
		if projectiles_group == null:
			print("projectiles_group is null (res://weapons/ranged/ranged_weapon.gd)")
		return
	#print("Shooting shots")

	var projectile: Projectile = projectile_scene.instantiate()

	projectile.damage = attacker.damage
	projectile.direction = attacker.weapon_dir if attacker is Player else attacker.attack_dir
	projectile.fired_by = attacker

	# Copies entity color to projectile color
	projectile.self_modulate = attacker.self_modulate

	projectile.global_position = attacker.global_position

	if projectiles_group != null:
		projectiles_group.add_child(projectile)
	else:
		attacker.get_tree().root.get_child(0).add_child(projectile) # Adds to main scene root node I think
