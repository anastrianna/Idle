/// @desc

var shots = 1;
if(path == "Multi Shot") { shots = 3; }

for(var i = 0; i < shots; i++ ) {
	var targetDirection = irandom_range(-75, 75);

	if(instance_exists(oEnemy) && i == 0) {
		var target = instance_nearest(x, y, oEnemy);	
		targetDirection = point_direction(x, y, target.x, target.y);
	}

	var proj = instance_create_layer(x, y, "Instances", oBullet);
	proj.damage = stats[# defenderStatColumns.value, defenderStatRows.power];
	proj.pierce = stats[# defenderStatColumns.value, defenderStatRows.pierce];
	if(path == "Explosive Shot") { proj.radius = 15; }
	proj.owner = self;

	proj.direction = targetDirection;
}