/// @desc

if(upgradeMenuBool) { 
	var vWidth = camera_get_view_width(view_camera[0]);
	var vHeight = camera_get_view_height(view_camera[0]);
	
	var buttonCount = 3;
	
	var buttonWidth = 128;
	var buttonHeight = 64;
	
	var startx = (vWidth/4) - (buttonWidth/2);
	var yBuffer = (vHeight/(buttonCount+1));
	var starty = yBuffer - (buttonHeight/2);
	
	var c = c_grey;
	var cc = c_white;
	
	rectangleWithOutline(startx, starty, startx+buttonWidth, starty+buttonHeight, cc, c);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(startx+(buttonWidth/2), starty+(buttonHeight/2), "Damage");
	
	rectangleWithOutline(startx, starty+(yBuffer), startx+buttonWidth, starty+(yBuffer)+buttonHeight, cc, c);
	draw_text(startx+(buttonWidth/2), starty+(buttonHeight/2)+(yBuffer), "Pierce");
	
	rectangleWithOutline(startx, starty+(yBuffer*2), startx+buttonWidth, starty+(yBuffer*2)+buttonHeight, cc, c);
	draw_text(startx+(buttonWidth/2), starty+(yBuffer*2)+(buttonHeight/2), "Speed");
}