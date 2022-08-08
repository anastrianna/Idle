/// @desc Fire damage

if(state == "fire") {
	with(oEnemy) {
		if(!self.immune && collision_circle(other.x + other.sprite_width/2, other.y, other.radius, self, true, false)) {
			self.currentHP -= other.damage/4;
			self.lastHit = other.owner;
		}
	}	
}