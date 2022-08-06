/// @desc

if(currentHP <= 0) {
	oGame.bank += value;
	value = 0;
	instance_destroy(self);
}