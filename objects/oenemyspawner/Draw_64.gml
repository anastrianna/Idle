/// @desc

var vWidth = camera_get_view_width(view_camera[0]);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(vWidth/2, 10, "Wave: " + string(wave));

var eCount = instance_number(oEnemy);
var c = c_white;
if(eCount < 100 && state == "active") { c = c_green; }

draw_text_color(vWidth/2, 20, "Enemies: " + string(eCount), c, c, c, c, 1);

if(eCount < 100 && alarm[1] > 0) { draw_text_color(vWidth/2, 30, "Next wave in: " + string(alarm[1]/room_speed), c, c, c, c, 1); }