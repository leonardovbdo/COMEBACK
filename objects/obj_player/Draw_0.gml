draw_self();
draw_sprite_ext(sprite_index, image_index, x, y + sprite_height -3, image_xscale, -image_yscale, image_angle, c_white, .3);

draw_set_font(fnt_pixelated);

var hexColor = $FF2674;

var red = (hexColor >> 16) & 255;
var green = (hexColor >> 8) & 255;
var blue = hexColor & 255;

var rosa_choque = make_color_rgb(red, green, blue);

var cor_hex = $22162A;
var cor_bgr = make_color_rgb((cor_hex & 0xFF), ((cor_hex >> 8) & 0xFF), ((cor_hex >> 16) & 0xFF));

var _alpha = 0.3;

if (!is_viajando) {	
	
	draw_set_color(cor_bgr);
	draw_text(x-1, y-13, string(torres_disponiveis));
	
	draw_set_alpha(0.7);
	
    if (!pode_posicionar_torre) {
		if alarm[1] > tempo_flash/2 {
			draw_set_alpha(0);
			_alpha = 0;
		} 
		draw_set_color(rosa_choque);
    } else {
		draw_set_color(c_white);
    }
	
    draw_circle(x, y + 5, 27, 1);
    draw_line(last_tower.x, last_tower.y, x, y);
	
	draw_set_alpha(_alpha);
	draw_line(last_tower.x, last_tower.y+12, x, y+12);
	
	
	draw_set_alpha(1)
}