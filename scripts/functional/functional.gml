///@func upgradeDefender(stat)
///@desc Upgrade a defender
///@arg stat The stat to upgrade
function upgradeDefender(stat) {
	switch(stat) {
		case defenderStats.atkPower:
			oDefender.atkPower += 5;
			break;
		case defenderStats.atkPierce:
			oDefender.atkPierce += 1;
			break;
		case defenderStats.atkSpeed:
			oDefender.atkSpeed += 25;
			break;
	}
	
	oGame.bank -= 3;
}

///@func rectangleWithOutline(startx, starty, endx, endy, outlineColor, fillColor)
///@desc Creates a rectangle with an outline
///@arg startx Upper left x position
///@arg starty Upper left y position
///@arg endx Bottom right x position
///@arg endy Bottom right y position
///@arg outlineColor Color of box outline
///@arg fillColor Background color of box
function rectangleWithOutline(startx, starty, endx, endy, outlineColor, fillColor) {
	draw_rectangle_color(startx, starty, endx, endy, outlineColor, outlineColor, outlineColor, outlineColor, true);
	draw_rectangle_color(startx, starty, endx, endy, fillColor, fillColor, fillColor, fillColor, false);
}

///@func doNothing()
///@desc Helper script
///@arg
function doNothing() {

}