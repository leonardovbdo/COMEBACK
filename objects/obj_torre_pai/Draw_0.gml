var hexColor = $FF2674;

var red = (hexColor >> 16) & 255;
var green = (hexColor >> 8) & 255;
var blue = hexColor & 255;
draw_set_color(make_color_rgb(red, green, blue));

if previous_tower != noone {
	draw_line(x, y, previous_tower.x, previous_tower.y);
	
	// Reflexo
	draw_set_alpha(0.3);
	draw_line(x, y+10, previous_tower.x, previous_tower.y+10 )
	draw_set_alpha(1)
	
	obj_player.last_tower = obj_player.new_tower;
}

draw_self();
draw_sprite_ext(sprite_index, image_index, x, y + sprite_height - 2, image_xscale, -image_yscale, image_angle, c_white, .7);