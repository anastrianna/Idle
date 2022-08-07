/// @desc

if(instance_exists(oEnemy)) {
	if(alarm[0] < 0) {
		var attacksPerSecond = 1/atkTime * (1 + atkSpeed/100);
		alarm[0] = (1/attacksPerSecond) * room_speed;	
	}
} else {
	alarm[0] = -1;	
}