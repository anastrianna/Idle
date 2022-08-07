/// @desc Spawn enemy


var spawnx = x + irandom(sprite_width);
var spawny = y + irandom(sprite_height);

if(wave%10 == 0 && wave > 0 && !instance_exists(oBoss) && !bossKill) {
	var boss = instance_create_layer(x+(sprite_width/2), y+(sprite_height/2), "Instances", oBoss);

	boss.currentHP = boss.maxHP * max(wave, 1);
} else {
	var enemy = instance_create_layer(spawnx, spawny, "Instances", oEnemy);

	enemy.currentHP = enemy.maxHP * max(wave, 1);
}