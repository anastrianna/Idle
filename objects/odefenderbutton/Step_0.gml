/// @desc

if(instance_exists(oDefender)) {
	image_index = 1;
} else {
	if(mouse_check_button_pressed(mb_left) && collision_point(mouse_x, mouse_y, self, true, false)) {
		oWall.currentDefenders += 1;
		keyboard_clear(mb_left);
	}
}