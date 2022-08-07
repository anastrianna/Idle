/// @desc
getInput();

var targetx = x;
var targety = oWall.y;

if(instance_exists(oWall) && returnToWall) {
	targetx = oWall.x;
} else if(scroll != 0) {
	targetx = x + scroll*5;
}

x = targetx;
y = targety;

/*
if(!instance_exists(oPlayer) || room != rGameRoom) { exit; }

//Make display follow player
var targetx = global.controller.player.x + random_range(-shake, shake);
var targety = global.controller.player.y + random_range(-shake, shake);

x = lerp(x, targetx + global.controller.player.image_xscale * 16, 0.3);
y = lerp(y, targety + global.controller.player.image_yscale * 16, 0.3);

if (keyboard_check_pressed(ord("Z"))) {
	zoom++;
	if (zoom > maxZoom) {
		zoom = 1;	
	}
	window_set_size(idealWidth*zoom, idealHeight*zoom);
	surface_resize(application_surface, idealWidth*zoom, idealHeight*zoom);
	alarm[0] = 1;
}*/