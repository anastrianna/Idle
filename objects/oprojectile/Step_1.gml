/// @desc
if(place_meeting(x, y, oGameWall)) { instance_destroy(self); }

if(radius == 0) {
	if(place_meeting(x, y, oEnemy) && ds_list_find_index(damagedTargets, instance_place(x, y, oEnemy)) == -1) {
		var enemy = instance_place(x, y, oEnemy);
		if(!enemy.immune) {
			enemy.currentHP -= damage;
			enemy.lastHit = owner;
	
			ds_list_add(damagedTargets, enemy);
		}
		
		if(pierce) {
			pierce -= 1;
		} else { instance_destroy(self); }
	}
} else {
	if(place_meeting(x, y, oEnemy)) {
		with(oEnemy) {
			if(!self.immune && collision_circle(other.x, other.y, other.radius, self, true, false) && !ds_list_find_value(other.damagedTargets, instance_place(x, y, self))) {
				self.currentHP -= other.damage;
				self.lastHit = other.owner;

				ds_list_add(other.damagedTargets, self);
			}
		}
		
		if(pierce) {
			pierce -= 1;
		} else { instance_destroy(self); }
	}
}