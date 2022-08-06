/// @desc

if(room == rInit) {
	if(!instance_exists(oDisplayManager)) {
		instance_create_layer(0, 0, "Processes", oDisplayManager);
	} else {
		room_goto(rGame);
	}
}