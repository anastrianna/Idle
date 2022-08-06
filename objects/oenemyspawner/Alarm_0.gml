/// @desc Spawn enemy

var spawnx = x + irandom(sprite_width);
var spawny = y + irandom(sprite_height);

instance_create_layer(spawnx, spawny, "Instances", oEnemy);