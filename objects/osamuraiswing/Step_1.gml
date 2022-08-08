/// @desc

if(place_meeting(x, y, oGameWall)) { 
	instance_destroy(self); 
	exit;	
}

with(oEnemy) {
	if(!self.immune && ds_list_find_index(other.damagedTargets, self) == -1 && place_meeting(self.x, self.y, other)) {
		self.currentHP -= other.damage;
		self.lastHit = other.owner;

		ds_list_add(other.damagedTargets, self);
	}
}
	
if(!phasebladeBool && alarm[0] < 0) { alarm[0] = room_speed/4; }
