/// @desc
var vWidth = camera_get_view_width(view_camera[0]);
var vHeight = camera_get_view_height(view_camera[0]);
	
var menuWidth = vWidth/3;
var menuHeight = vHeight * 0.9;
var buttonWidth = 128;
var buttonHeight = 64;
var buttonCount, c, cc;

var startx = menuWidth/2 - (buttonWidth/2);

draw_rectangle_color(0, 0, menuWidth, menuHeight, c_white, c_white, c_white, c_white, false);

if(defenderUpgradeMenuBool && defenderFocus) {
	if(array_length_1d(defenderFocus.pathNames) > 0 && !defenderFocus.upgraded && defenderFocus.kills > 100) {
		switch(defenderFocus.object_index) {
			case oGunner:
				buttonCount = gunnerPaths.count;
				break;
			case oBomber:
				buttonCount = bomberPaths.count;
				break;
			case oSamurai:
				buttonCount = samuraiPaths.count;
				break;
		}
		
		var yBuffer = (menuHeight/(buttonCount+1));
		var starty = yBuffer - (buttonHeight/2);
	
		c = c_grey;
		cc = c_black;
	
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		
		var i = 0;
		repeat(buttonCount) {
			rectangleWithOutline(startx, starty+(i*yBuffer), startx+buttonWidth, starty+(i*yBuffer)+buttonHeight, cc, c);
			draw_text(startx+(buttonWidth/2), starty+(i*yBuffer)+(buttonHeight/4), defenderFocus.pathNames[i]);
			i++;
		}
	} else {
		buttonCount = ds_grid_height(defenderFocus.stats);	
		var yBuffer = (menuHeight/(buttonCount+1));
		var starty = yBuffer - (buttonHeight/2);
	
		c = c_grey;
		cc = c_black;
	
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
				
		var i = 0;
		repeat(buttonCount) {
			if(oGame.bank < defenderFocus.stats[# defenderStatColumns.upgradeCost, i]) { 
				c = c_red; 
			} else {
				c = c_grey;
			}
			rectangleWithOutline(startx, starty+(i*yBuffer), startx+buttonWidth, starty+(i*yBuffer)+buttonHeight, cc, c);
			draw_text(startx+(buttonWidth/2), starty+(buttonHeight/4)+(i*yBuffer), defenderFocus.stats[# defenderStatColumns.name, i] + ": "  + string(defenderFocus.stats[# defenderStatColumns.value, i]));
			draw_text(startx+(buttonWidth/2), starty+(buttonHeight*3/4)+(i*yBuffer), "Cost: " + string(defenderFocus.stats[# defenderStatColumns.upgradeCost, i]));
			
			i++;
		}
	}
	draw_text_color(vWidth/6, 30, "Kills: " + string(defenderFocus.kills), c_black, c_black, c_black, c_black, 1);
	draw_text_color(vWidth/6, 50, "Spent: " + string(defenderFocus.spentDosh), c_black, c_black, c_black, c_black, 1);
	
} else {
	var buttonCount = array_length_1d(defenderNames);

	var yBuffer = (menuHeight/(buttonCount+1));
	var starty = yBuffer - (buttonHeight/2);
	
	c = c_grey;
	cc = c_black;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	var i = 0;
	repeat(buttonCount) {
		if(instance_exists(oDefender) && oGame.bank < defenderCosts[i]) { 
			c = c_red; 
		} else {
			c = c_grey;	
		}
		rectangleWithOutline(startx, starty+(i*yBuffer), startx+buttonWidth, starty+(i*yBuffer)+buttonHeight, cc, c);
		draw_text(startx+(buttonWidth/2), starty+(buttonHeight/2)+(i*yBuffer), defenderNames[i] + ": " + string(defenderCosts[i]));
		
		i++;
	}
}

startx = 0;
starty = vHeight * 0.9;
menuWidth = vWidth;
menuHeight = vHeight - starty;
buttonCount = array_length_1d(abilities);
var xBuffer = menuWidth/(buttonCount+1);

c = c_white;

draw_rectangle_color(startx, starty, startx + menuWidth, starty + menuHeight, c, c, c, c, false);

startx += xBuffer;

var i = 0;
repeat(buttonCount) {	
	c = c_grey;
	cc = c_black;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	if(!instance_exists(oDefender) || oGame.bank < abilityCosts[i] || alarm[0] > 0) { c = c_red; }
	rectangleWithOutline(startx+(i*xBuffer), starty + ((menuHeight - buttonHeight)/2), startx+(i*xBuffer)+buttonWidth, starty+buttonHeight, cc, c);
	draw_text(startx+(i*xBuffer)+(buttonWidth/2), starty+(buttonHeight/2), abilities[i] + ": " + string(abilityCosts[i]));

	i++;
}