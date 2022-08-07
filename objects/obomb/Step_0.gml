/// @desc

move_towards_point(targetx, targety, flightSpeed);

if(abs(x - targetx) < flightSpeed && abs(y - targety) < flightSpeed) { flightSpeed = max(1, flightSpeed - 1); }