/// @desc

if(instance_exists(oEnemy)) {
	var atkSpeedBuff = stats[# defenderStatColumns.value, defenderStatRows.speed];
	
	if(alarm[0] < 0) {
		var attacksPerSecond = 1/(atkTime/boostMod) * (1 + atkSpeedBuff/100);
		alarm[0] = (1/attacksPerSecond) * room_speed;	
	}
} else {
	alarm[0] = -1;	
}