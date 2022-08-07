/// @desc
var vWidth = camera_get_view_width(view_camera[0]);
var vHeight = camera_get_view_height(view_camera[0]);
	
if(defenderUpgradeMenuBool && defenderFocus) {	
	if(defenderFocus.object_index == oBomber) {
		var buttonCount = 3;
	
		var menuWidth = vWidth/3;
		var buttonWidth = 128;
		var buttonHeight = 64;
	
		var startx = menuWidth/2 - (buttonWidth/2);
		var yBuffer = (vHeight/(buttonCount+1));
		var starty = yBuffer - (buttonHeight/2);
	
		var c = c_grey;
		var cc = c_black;
	
		draw_rectangle_color(0, 0, menuWidth, vHeight, c_white, c_white, c_white, c_white, false);
	
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		if(oGame.bank < defenderFocus.statCost[bomberStats.atkPower]) { c = c_red; }
		rectangleWithOutline(startx, starty, startx+buttonWidth, starty+buttonHeight, cc, c);
		draw_text(startx+(buttonWidth/2), starty+(buttonHeight/4), "Damage: " + string(defenderFocus.atkPower));
		draw_text(startx+(buttonWidth/2), starty+(buttonHeight*3/4), "Cost: " + string(defenderFocus.statCost[bomberStats.atkPower]));
	
		if(oGame.bank < defenderFocus.statCost[bomberStats.atkRadius]) { 
			c = c_red; 
		} else {
			c = c_grey;	
		}
		rectangleWithOutline(startx, starty+(yBuffer), startx+buttonWidth, starty+(yBuffer)+buttonHeight, cc, c);
		draw_text(startx+(buttonWidth/2), starty+(buttonHeight/4)+(yBuffer), "Radius: " + string(defenderFocus.atkRadius));
		draw_text(startx+(buttonWidth/2), starty+(buttonHeight*3/4)+(yBuffer), "Cost: " + string(defenderFocus.statCost[bomberStats.atkRadius]));
	
		if(oGame.bank < defenderFocus.statCost[bomberStats.atkSpeed]) { 
			c = c_red; 
		} else {
			c = c_grey;	
		}
		rectangleWithOutline(startx, starty+(yBuffer*2), startx+buttonWidth, starty+(yBuffer*2)+buttonHeight, cc, c);
		draw_text(startx+(buttonWidth/2), starty+(yBuffer*2)+(buttonHeight/4), "Speed: +%" + string(defenderFocus.atkSpeed));
		draw_text(startx+(buttonWidth/2), starty+(yBuffer*2)+(buttonHeight*3/4), "Cost: " + string(defenderFocus.statCost[bomberStats.atkSpeed]));
	} else if(defenderFocus.object_index == oDefender) {
		var buttonCount = 3;
	
		var menuWidth = vWidth/3;
		var buttonWidth = 128;
		var buttonHeight = 64;
	
		var startx = menuWidth/2 - (buttonWidth/2);
		var yBuffer = (vHeight/(buttonCount+1));
		var starty = yBuffer - (buttonHeight/2);
	
		var c = c_grey;
		var cc = c_black;
	
		draw_rectangle_color(0, 0, menuWidth, vHeight, c_white, c_white, c_white, c_white, false);
	
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		if(oGame.bank < defenderFocus.statCost[gunnerStats.atkPower]) { c = c_red; }
		rectangleWithOutline(startx, starty, startx+buttonWidth, starty+buttonHeight, cc, c);
		draw_text(startx+(buttonWidth/2), starty+(buttonHeight/4), "Damage: " + string(defenderFocus.atkPower));
		draw_text(startx+(buttonWidth/2), starty+(buttonHeight*3/4), "Cost: " + string(defenderFocus.statCost[gunnerStats.atkPower]));
	
		if(oGame.bank < defenderFocus.statCost[gunnerStats.atkPierce]) { 
			c = c_red; 
		} else {
			c = c_grey;	
		}
		rectangleWithOutline(startx, starty+(yBuffer), startx+buttonWidth, starty+(yBuffer)+buttonHeight, cc, c);
		draw_text(startx+(buttonWidth/2), starty+(buttonHeight/4)+(yBuffer), "Pierce: " + string(defenderFocus.atkPierce));
		draw_text(startx+(buttonWidth/2), starty+(buttonHeight*3/4)+(yBuffer), "Cost: " + string(defenderFocus.statCost[gunnerStats.atkPierce]));
	
		if(oGame.bank < defenderFocus.statCost[gunnerStats.atkSpeed]) { 
			c = c_red; 
		} else {
			c = c_grey;	
		}
		rectangleWithOutline(startx, starty+(yBuffer*2), startx+buttonWidth, starty+(yBuffer*2)+buttonHeight, cc, c);
		draw_text(startx+(buttonWidth/2), starty+(yBuffer*2)+(buttonHeight/4), "Speed: +%" + string(defenderFocus.atkSpeed));
		draw_text(startx+(buttonWidth/2), starty+(yBuffer*2)+(buttonHeight*3/4), "Cost: " + string(defenderFocus.statCost[gunnerStats.atkSpeed]));
	}
} else {
	var buttonCount = array_length_1d(defenderNames);
			
	var menuWidth = vWidth/3;
	var buttonWidth = 128;
	var buttonHeight = 64;
	
	var startx = menuWidth/2 - (buttonWidth/2);
	var yBuffer = (vHeight/(buttonCount+1));
	var starty = yBuffer - (buttonHeight/2);
	
	var c = c_grey;
	var cc = c_black;
	
	draw_rectangle_color(0, 0, menuWidth, vHeight, c_white, c_white, c_white, c_white, false);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if(oGame.bank < defenderCosts[defenderTypes.gunner]) { c = c_red; }
	rectangleWithOutline(startx, starty, startx+buttonWidth, starty+buttonHeight, cc, c);
	draw_text(startx+(buttonWidth/2), starty+(buttonHeight/2), "Gunner: " + string(defenderCosts[defenderTypes.gunner]));
	
	if(oGame.bank < defenderCosts[defenderTypes.bomber]) { 
		c = c_red; 
	} else {
		c = c_grey;	
	}
	rectangleWithOutline(startx, starty+(yBuffer), startx+buttonWidth, starty+(yBuffer)+buttonHeight, cc, c);
	draw_text(startx+(buttonWidth/2), starty+(buttonHeight/2)+(yBuffer), "Bomber: " + string(defenderCosts[defenderTypes.bomber]));
}