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

///@func getInput()
///@desc Get user input
function getInput() {
	//Set control variables
	var right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	var left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	var up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	var down = keyboard_check(ord("S")) || keyboard_check(vk_down);

	var rightPress = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
	var leftPress = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
	var upPress = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
	var downPress = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);

	var space = keyboard_check_pressed(vk_space);
	var escape = keyboard_check_pressed(vk_escape);
	var enter = keyboard_check_pressed(vk_enter);
	var rightClick = mouse_check_button_pressed(mb_right);
	var leftClick = mouse_check_button_pressed(mb_left);
	var backSpace = keyboard_check_pressed(vk_backspace);
	var tab = keyboard_check_pressed(vk_tab);

	inspectButton = leftClick;

	scroll = right - left;
	
	returnToWall = space;
}

///@func doNothing()
///@desc Helper script
///@arg
function doNothing() {

}