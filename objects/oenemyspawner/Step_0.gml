/// @desc

switch(state) {
	case "active":
		if(alarm[0] < 0) {
			alarm[0] = room_speed * 0.1;
		}
		if(((wave%10 == 0 && !instance_exists(oBoss)) || (wave%10 != 0 && instance_number(oEnemy) < 100)) && alarm[1] < 0) {
			alarm[1] = 10 * room_speed;	
		} else if(((wave%10 == 0 && instance_exists(oBoss)) || (wave%10 != 0 && instance_number(oEnemy) > 100)) && alarm[1] > 0) {
			alarm[1] = -1;
		}
		break;
	case "prep":
		if(alarm[0] < 0) {
			alarm[0] = room_speed * 0.1;
		}
		if(alarm[2] < 0) { 
			alarm[2] = room_speed * 30;
		}
		break;
	case "in-game":
		if(instance_exists(oDefender)) { state = "prep"; }
		break;
	case "default":
		break;
}