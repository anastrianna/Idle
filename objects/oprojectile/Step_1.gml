/// @desc

if(place_meeting(x, y, oEnemy)) {
	var enemy = instance_place(x, y, oEnemy);
	enemy.currentHP -= damage;
	
	if(pierce) {
		pierce -= 1;
	} else { instance_destroy(self); }
} else if(place_meeting(x, y, oGameWall)) { instance_destroy(self); }