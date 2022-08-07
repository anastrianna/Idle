/// @desc

var dirx = irandom(4);
var diry = irandom(1);

if(dirx == 0) {
	dirx = 1;	
} else { dirx = -1;}

if(diry == 0) {
	diry = 1;
} else { diry = -1; }

var xx = dirx*movSpeed;
var yy = diry*movSpeed;

if(place_meeting(x + xx, y, oCollidable)) {
		var temp = 0;
		while(!place_meeting(x+temp, y, oCollidable)) {
			temp += 1;
			if(temp > movSpeed) { break; }
		}
		if(temp > movSpeed) {
			xx = 0;
		} else {
			xx = temp;
		}
}

if(place_meeting(x, y + yy, oCollidable)) {
		var temp = 0;
		while(!place_meeting(x, y+temp, oCollidable)) {
			temp += 1;
			if(temp > movSpeed) { break; }
		}
		if(temp > movSpeed) {
			yy = 0;
		} else {
			yy = temp;
		}
}

if(xx == 0 && yy == 0) {
	for(var i = 1; i <= movSpeed; i++) {
		if(!place_meeting(x + i*dirx, y, oCollidable)) {
			xx = i*dirx;
			break;
		} else if(!place_meeting(x, y + i*diry, oCollidable)) {
			yy = i*diry;
			break;
		} else if(!place_meeting(x + i*dirx, y + i*diry, oCollidable)) {
			xx = i*dirx;
			yy = i*diry;
			break;
		}
	}
}

if(xx == 0 && yy == 0 && place_meeting(x, y, oEnemySpawner)) {
	instance_destroy(self);
}

x += xx;
y += yy;