/// @desc

if(place_meeting(x, y, oEnemy) && !ds_list_find_value(damagedTargets, instance_place(x, y, oEnemy))) {
	var enemy = instance_place(x, y, oEnemy);
	enemy.currentHP -= damage;
	
	ds_list_add(damagedTargets, enemy);
	if(pierce) {
		pierce -= 1;
	} else { instance_destroy(self); }
} else if(place_meeting(x, y, oGameWall)) { instance_destroy(self); }