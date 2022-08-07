/// @desc
show_debug_message("boss: " + string(currentHP));
var xx = -1;

xx = xx*movSpeed;

if(place_meeting(x + xx, y, oCollidable)) {
	var temp = 0;
	while(!place_meeting(x+temp, y, oCollidable)) {
		temp += 1;
	}
	xx = temp;
}

x += xx;
