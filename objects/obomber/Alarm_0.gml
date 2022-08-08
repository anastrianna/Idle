/// @desc Fire projectile

if(instance_exists(oEnemy)) {
	var target = instance_nearest(x, y, oEnemy);	
	
	var bomb = instance_create_layer(x, y, "Instances", oBomb);
	bomb.damage = stats[# defenderStatColumns.value, bomberStatRows.power];
	bomb.radius = stats[# defenderStatColumns.value, bomberStatRows.radius];
	bomb.targetx = target.x;
	bomb.targety = target.y;
	bomb.owner = self;
	if(path == pathNames[bomberPaths.fire]) { bomb.fire = true; }
}