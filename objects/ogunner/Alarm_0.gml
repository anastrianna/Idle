/// @desc Fire projectile

var targetDirection = irandom_range(-90, 90);

if(instance_exists(oEnemy)) {
	var target = instance_nearest(x, y, oEnemy);	
	targetDirection = point_direction(x, y, target.x, target.y);
}

var proj = instance_create_layer(x, y, "Instances", oProjectile);
proj.damage = atkPower;
proj.pierce = atkPierce;

proj.direction = targetDirection;