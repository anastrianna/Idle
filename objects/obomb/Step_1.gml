/// @desc
image_xscale = radius/baseRadius;
image_yscale = radius/baseRadius;
		
switch(state) {
	case "default":
		image_index = 0;
		if(abs(x - targetx) < 1 && abs(y - targety) < 1) {
			with(oEnemy) {
				if(!self.immune && collision_circle(other.x + sprite_width/2, other.y, other.radius, self, true, false)) {
					self.currentHP -= other.damage;
					self.lastHit = other.owner;
				}
			}
			state = "exploded";
		}
		break;
	case "exploded":
		image_index = 1;
		
		if(alarm[0] < 0) { alarm[0] = room_speed * 0.5; }
		break;
	case "fire":
		image_index = 2;
		if(fire) {
			fire = false;
			alarm[0] = room_speed * 5;
		}
		if(alarm[1] < 0) { alarm[1] = room_speed * 1; }
		break;
}