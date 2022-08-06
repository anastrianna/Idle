/// @desc

if(upgradeMenuBool && mouse_check_button_pressed(mb_left) && oGame.bank >= 3) { 
	var vWidth = camera_get_view_width(view_camera[0]);
	var vHeight = camera_get_view_height(view_camera[0]);
	var topLeftx = camera_get_view_x(view_camera[0]);
	var topLefty = camera_get_view_y(view_camera[0]);
	
	var buttonCount = 3;
	
	var buttonWidth = 128;
	var buttonHeight = 64;
	
	var startx = topLeftx + (vWidth/4) - (buttonWidth/2);
	var yBuffer = (vHeight/(buttonCount+1));
	var starty = topLefty + yBuffer - (buttonHeight/2);
	
	if(point_in_rectangle(mouse_x, mouse_y, startx, starty, startx+buttonWidth, starty+buttonHeight)) {
		upgradeDefender(defenderStats.atkPower);	
	} else if(point_in_rectangle(mouse_x, mouse_y, startx, starty+(yBuffer), startx+buttonWidth, starty+(yBuffer)+buttonHeight)) {
		upgradeDefender(defenderStats.atkPierce);
	} else if(point_in_rectangle(mouse_x, mouse_y, startx, starty+(yBuffer*2), startx+buttonWidth, starty+(yBuffer*2)+buttonHeight)) {
		upgradeDefender(defenderStats.atkSpeed);
	}
}