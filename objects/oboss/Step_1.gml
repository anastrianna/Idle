/// @desc

if(currentHP <= 0) {
	oEnemySpawner.bossKill = true;
	instance_destroy(self);
}