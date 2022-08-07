/// @desc Check for left click interaction
getInput();

if(!instance_exists(oDefender) || defenderFocus == false) { defenderUpgradeMenuBool = false; }

if(inspectButton) {
	var xx = mouse_x;
	var yy = mouse_y;
	var vWidth = camera_get_view_width(view_camera[0]);
	var vHeight = camera_get_view_height(view_camera[0]);
	var topLeftx = camera_get_view_x(view_camera[0]);
	var topLefty = camera_get_view_y(view_camera[0]);
			
	#region Defender Menu
	//Check if defender upgrade menu is open
	if(point_in_rectangle(xx, yy, topLeftx, topLefty, topLeftx + (vWidth/3), topLefty + vHeight)) {
		if(defenderUpgradeMenuBool) {
			switch(defenderFocus.object_index) {
				case oGunner:
					var buttonCount = 3;
			
					var menuWidth = vWidth/3;
					var buttonWidth = 128;
					var buttonHeight = 64;
	
					var startx = topLeftx + menuWidth/2 - (buttonWidth/2);
					var yBuffer = (vHeight/(buttonCount+1));
					var starty = topLefty + yBuffer - (buttonHeight/2);
	
					if(point_in_rectangle(xx, yy, startx, starty, startx+buttonWidth, starty+buttonHeight) && oGame.bank >= defenderFocus.statCost[gunnerStats.atkPower]) {
						upgradeDefender(defenderFocus, gunnerStats.atkPower);	
					} else if(point_in_rectangle(xx, yy, startx, starty+(yBuffer), startx+buttonWidth, starty+(yBuffer)+buttonHeight) && oGame.bank >= defenderFocus.statCost[gunnerStats.atkPierce]) {
						upgradeDefender(defenderFocus, gunnerStats.atkPierce);
					} else if(point_in_rectangle(xx, yy, startx, starty+(yBuffer*2), startx+buttonWidth, starty+(yBuffer*2)+buttonHeight) && oGame.bank >= defenderFocus.statCost[gunnerStats.atkSpeed]) {
						upgradeDefender(defenderFocus, gunnerStats.atkSpeed);
					}
					break;
				case oBomber:
					var buttonCount = 3;
			
					var menuWidth = vWidth/3;
					var buttonWidth = 128;
					var buttonHeight = 64;
	
					var startx = topLeftx + menuWidth/2 - (buttonWidth/2);
					var yBuffer = (vHeight/(buttonCount+1));
					var starty = topLefty + yBuffer - (buttonHeight/2);
	
					if(point_in_rectangle(xx, yy, startx, starty, startx+buttonWidth, starty+buttonHeight) && oGame.bank >= defenderFocus.statCost[bomberStats.atkPower]) {
						upgradeDefender(defenderFocus, bomberStats.atkPower);	
					} else if(point_in_rectangle(xx, yy, startx, starty+(yBuffer), startx+buttonWidth, starty+(yBuffer)+buttonHeight) && oGame.bank >= defenderFocus.statCost[bomberStats.atkRadius]) {
						upgradeDefender(defenderFocus, bomberStats.atkRadius);
					} else if(point_in_rectangle(xx, yy, startx, starty+(yBuffer*2), startx+buttonWidth, starty+(yBuffer*2)+buttonHeight) && oGame.bank >= defenderFocus.statCost[bomberStats.atkSpeed]) {
						upgradeDefender(defenderFocus, bomberStats.atkSpeed);
					}
					break;
			}
		} else {
			var buttonCount = array_length_1d(defenderNames);
			
			var menuWidth = vWidth/3;
			var buttonWidth = 128;
			var buttonHeight = 64;
	
			var startx = topLeftx + menuWidth/2 - (buttonWidth/2);
			var yBuffer = (vHeight/(buttonCount+1));
			var starty = topLefty + yBuffer - (buttonHeight/2);
	
			if(point_in_rectangle(xx, yy, startx, starty, startx+buttonWidth, starty+buttonHeight) && oGame.bank >= defenderCosts[defenderTypes.gunner]) {
				createDefender(defenderTypes.gunner);	
			} else if(point_in_rectangle(xx, yy, startx, starty+(yBuffer), startx+buttonWidth, starty+(yBuffer)+buttonHeight) && oGame.bank >= defenderCosts[defenderTypes.bomber]) {
				createDefender(defenderTypes.bomber);
			}
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
		
		mouse_clear(mb_left);
	}
}