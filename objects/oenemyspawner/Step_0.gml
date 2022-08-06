/// @desc

if(active) {
	if(alarm[0] < 0) {
		alarm[0] = room_speed * 0.1;
	}
} else if(instance_exists(oDefender)) { active = true; }