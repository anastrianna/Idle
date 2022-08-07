/// @desc Fire projectile

if(instance_exists(oEnemy)) {
	var target = instance_nearest(x, y, oEnemy);	
	
	var bomb = instance_create_layer(x, y, "Instances", oBomb);
	bomb.damage = atkPower;
	bomb.radius = atkRadius;
	bomb.targetx = target.x;
	bomb.targety = target.y;
}