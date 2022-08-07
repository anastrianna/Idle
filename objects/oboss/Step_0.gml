/// @desc
var xx = -1;

xx = xx*movSpeed;

if(place_meeting(x + xx, y, oCollidable)) {
	var temp = 0;
	while(!place_meeting(x+temp, y, oCollidable)) {
		temp += 1;
	}
	if(temp > movSpeed) {
		xx = 0;
	} else {
		xx = temp;
	}
}

x += xx;
