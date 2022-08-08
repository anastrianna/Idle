/// @desc Fire projectile

var targetDirection = irandom_range(-90, 90);

if(instance_exists(oEnemy)) {
	var target = instance_nearest(x, y, oEnemy);	
	targetDirection = point_direction(x, y, target.x, target.y);
}

var proj = instance_create_layer(x, y, "Instances", oBullet);
proj.damage = stats[# defenderStatColumns.value, defenderStatRows.power];
proj.pierce = stats[# defenderStatColumns.value, defenderStatRows.pierce];
proj.owner = self;

proj.direction = targetDirection;