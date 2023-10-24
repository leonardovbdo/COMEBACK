draw_self();
draw_sprite_ext(sprite_index, image_index, x, y + sprite_height -3, image_xscale, -image_yscale, image_angle, c_white, .3);

/*

var hexColor = $FF2674;

var red = (hexColor >> 16) & 255;
var green = (hexColor >> 8) & 255;
var blue = hexColor & 255;

// Adicione as informações da linha à lista
var line_info = ds_map_create();

if keyboard_check_pressed(ord("X")) {
	line_info[? "color"] = make_color_rgb(red, green, blue);
	line_info[? "start_x"] = x;
	line_info[? "start_y"] = y;
	line_info[? "end_x"] = last_tower.x;
	line_info[? "end_y"] = last_tower.y;
	ds_list_add(global.lines, line_info);
	last_tower = new_tower;
}

draw_set_alpha(0.3); // Defina a opacidade de volta ao normal
for (var i = 0; i < ds_list_size(global.lines); i++) {
    var line_info = ds_list_find_value(global.lines, i);
    draw_set_color(line_info[? "color"]);
    draw_line(line_info[? "start_x"], line_info[? "start_y"]+10, line_info[? "end_x"], line_info[? "end_y"]+10);
}

draw_set_alpha(1)

draw_self();
draw_sprite_ext(sprite_index, image_index, x, y + sprite_height -3, image_xscale, -image_yscale, image_angle, c_white, .3);

// Desenhar todas as linhas armazenadas
draw_set_alpha(1); // Defina a opacidade de volta ao normal
for (var i = 0; i < ds_list_size(global.lines); i++) {
    var line_info = ds_list_find_value(global.lines, i);
    draw_set_color(line_info[? "color"]);
    draw_line(line_info[? "start_x"], line_info[? "start_y"], line_info[? "end_x"], line_info[? "end_y"]);
}

*/