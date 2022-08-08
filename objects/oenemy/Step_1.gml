/// @desc
if(immune) { image_index = 1; }
else { image_index = 0; }

if(instance_exists(oEnemyBuffer)) {
	var buffer = instance_nearest(x, y, oEnemyBuffer);
	
	if(point_distance(x, y, buffer.x, buffer.y) <= buffer.range) { 
		immune = true; 
	} else { immune = false; }
}
if(currentHP <= 0) {
	if(lastHit) {
		lastHit.kills += 1;	
	}
	oGame.bank += value;
	instance_destroy(self);
}