/// @desc

if(instance_exists(oEnemy)) {
	var enemy = instance_nearest(x, y, oEnemy);
	
	var swingx = x + sprite_get_width(oWall.sprite_index)/4;
	if(point_distance(swingx, y, enemy.x, enemy.y) <= stats[# defenderStatColumns.value, samuraiStatRows.range] && alarm[0] < 0) {
		var attacksPerSecond = 1/(atkTime/boostMod) * (1 + stats[# defenderStatColumns.value, samuraiStatRows.speed]/100);
		alarm[0] = (1/attacksPerSecond) * room_speed;	
	}
} else {
	alarm[0] = -1;	
}