/// @desc

if(currentHP <= 0) {
	oGame.bank += value;
	instance_destroy(self);
}