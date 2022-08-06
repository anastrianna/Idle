/// @desc

var xx = irandom(4);
var yy = irandom(1);

if(xx == 0) {
	xx = 1;	
} else { xx = -1;}

if(yy == 0) {
	yy = 1;
} else { yy = -1; }

xx = xx*movSpeed;
yy = yy*movSpeed;

if(place_meeting(x + xx, y, oCollidable)) {
		var temp = 0;
		while(!place_meeting(x+temp+xx, y, oCollidable)) {
			temp += 1;
		}
		xx = temp;
}

if(place_meeting(x, y + yy, oCollidable)) {
		var temp = 0;
		while(!place_meeting(x+temp+xx, y+temp+yy, oCollidable)) {
			temp += 1;
		}
		yy = temp;
}

x += xx;
y += yy;