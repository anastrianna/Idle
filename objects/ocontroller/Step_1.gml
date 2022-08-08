/// @desc Check for left click interaction
getInput();

if(!instance_exists(oDefender) || defenderFocus == false) { defenderUpgradeMenuBool = false; }

var xx = mouse_x;
var yy = mouse_y;

var vWidth = camera_get_view_width(view_camera[0]);
var vHeight = camera_get_view_height(view_camera[0]);
var topLeftx = camera_get_view_x(view_camera[0]);
var topLefty = camera_get_view_y(view_camera[0]);

var menuWidth, menuHeight, buttonWidth, buttonHeight, buttonCount;

if(inspectButton) {	
	menuWidth = vWidth/3;
	menuHeight = vHeight * 0.9;
	buttonWidth = 128;
	buttonHeight = 64;

	#region Defender Menu
	//Check if defender upgrade menu is open
	if(point_in_rectangle(xx, yy, topLeftx, topLefty, topLeftx + (vWidth/3), topLefty + menuHeight)) {	
		var startx = topLeftx + menuWidth/2 - (buttonWidth/2);
		if(defenderUpgradeMenuBool) {			
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
				var starty = topLefty + yBuffer - (buttonHeight/2);
						
				var i = 0;
				repeat(buttonCount) {
					if(point_in_rectangle(xx, yy, startx, starty+(i*yBuffer), startx+buttonWidth, starty+(i*yBuffer)+buttonHeight)) {
						empowerDefender(defenderFocus, i);	
					}
					
					i++;
				}				
			} else {
				var buttonCount = ds_grid_height(defenderFocus.stats);
	
				var yBuffer = (menuHeight/(buttonCount+1));
				var starty = topLefty + yBuffer - (buttonHeight/2);
						
				var i = 0;
				repeat(buttonCount) {
					if(point_in_rectangle(xx, yy, startx, starty+(i*yBuffer), startx+buttonWidth, starty+(i*yBuffer)+buttonHeight) && oGame.bank >= defenderFocus.stats[# defenderStatColumns.upgradeCost, i]) {
						upgradeDefender(defenderFocus, i);	
					}
					
					i++;
				}
			}
		} else {
			if(ds_list_size(oWall.defenderList) < oWall.maxDefenders) {
				buttonCount = array_length_1d(defenderNames);
	
				var yBuffer = (menuHeight/(buttonCount+1));
				var starty = topLefty + yBuffer - (buttonHeight/2);
				
				var i = 0;
				repeat(defenderTypes.count) {
					if(point_in_rectangle(xx, yy, startx, starty+(i*yBuffer), startx+buttonWidth, starty+(i*yBuffer)+buttonHeight) && oGame.bank >= defenderCosts[i]) {
						createDefender(i);
					}
					
					i++;
				}
			}
		}
	} else if(point_in_rectangle(xx, yy, topLeftx + 0, topLefty + vHeight * 0.9, topLeftx + vWidth, topLefty + vHeight)){
		startx = topLeftx;
		starty = topLefty + vHeight * 0.9;
		menuWidth = vWidth;
		menuHeight = vHeight - starty;
		buttonCount = array_length_1d(abilities);
		var xBuffer = menuWidth/(buttonCount+1);
		startx += xBuffer;

		var i = 0;
		repeat(buttonCount) {	
			if(point_in_rectangle(xx, yy, startx+(i*xBuffer), starty, startx+(i*xBuffer)+buttonWidth, starty+buttonHeight) && instance_exists(oDefender) && oGame.bank >= abilityCosts[i]) {
				castAbility(i);
			}
			
			i++;
		}
	} else {
	#endregion
		//Check for objects
		var action = false;
		var temp = instance_position(xx, yy, oDefender);
		if(!action && temp != noone) {
			action = true;
			if(defenderUpgradeMenuBool) {
				if(temp == defenderFocus) {
					defenderUpgradeMenuBool = defenderFocus = false;
				} else { 
					defenderFocus = temp;	
				}
			} else {
				defenderFocus = temp;
				defenderUpgradeMenuBool = true;
			}
		}
		
		if(!action && defenderUpgradeMenuBool) {
			if(!point_in_rectangle(xx, yy, topLeftx, topLefty, topLeftx + (vWidth/3), topLefty + vHeight)) {
				defenderUpgradeMenuBool = defenderFocus = false;
			}
		}
	}

	mouse_clear(mb_left);
}