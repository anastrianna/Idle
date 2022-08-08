/// @desc Fire projectile

var scale = stats[# defenderStatColumns.value, samuraiStatRows.range]/baseRange;

var proj = instance_create_layer(x + sprite_get_width(sWall)/4, y, "Instances", oSamuraiSwing);
proj.damage = stats[# defenderStatColumns.value, samuraiStatRows.power];

proj.image_xscale = scale;
proj.image_yscale = scale;

if(path == "Phaseblade") { 
	proj.phasebladeBool = true;
	proj.flightSpeed = 10;
}

proj.owner = self;