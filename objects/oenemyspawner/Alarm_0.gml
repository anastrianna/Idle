/// @desc Spawn enemy

if(wave%10 == 0 && wave > 0 && !instance_exists(oBoss) && !bossKill) {
	var boss = instance_create_layer(x+(sprite_width/2), y+(sprite_height/2), "Instances", oBoss);

	boss.currentHP = boss.maxHP * max(wave, 1);
} else {
	for(var i = 0; i < 3; i++) {
		var spawnx = x + irandom(sprite_width);
		var spawny = y + irandom(sprite_height);

		var enemy = instance_create_layer(spawnx, spawny, "Instances", oEnemy);
		enemy.currentHP = enemy.maxHP * max(wave, 1);
		eCount += 1;
	}
	if(wave > 4) {
		if(bufferCounter < 10) {
			bufferCounter++;
		} else {
			var spawnx = x + irandom(sprite_width);
			var spawny = y + irandom(sprite_height);

			var enemy = instance_create_layer(spawnx, spawny, "Instances", oEnemyBuffer);
			enemy.currentHP = enemy.maxHP * max(wave, 1);
			eCount += 1;
			bufferCounter = 0;
		}
	}
}