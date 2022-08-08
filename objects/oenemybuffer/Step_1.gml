/// @desc

if(currentHP <= 0) {
	if(lastHit) {
		lastHit.kills += 1;	
	}
	oGame.bank += value;
	instance_destroy(self);
}