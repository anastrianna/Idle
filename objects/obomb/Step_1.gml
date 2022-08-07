/// @desc

if(abs(x - targetx) < 1 && abs(y - targety) < 1 && alarm[0] < 0) {
	image_index = 1;
	image_xscale = radius/baseRadius;
	image_yscale = radius/baseRadius;
	
	with(oEnemy) {
		if(collision_circle(other.x, other.y, other.radius, self, true, false)) {
			self.currentHP -= other.damage;	
		}
	}
	
	alarm[0] = room_speed * 0.5;
}