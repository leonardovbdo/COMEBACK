if (surface_exists(surf)) {
	surface_set_target(surf);
	draw_clear_alpha(c_black,0)
	
	with(obj_casa) {
		draw_sprite_ext(sprite_index, image_index, x, y + sprite_height - 2, image_xscale, -image_yscale, image_angle, c_white, .7);
	}
	
	with(obj_enemy) {
		draw_sprite_ext(sprite_index, image_index, x, y + sprite_height - 1, image_xscale, -image_yscale, image_angle, c_white, .7);
	}
	
	with(obj_player) {
		draw_sprite_ext(sprite_index, image_index, x, y + sprite_height -3, image_xscale, -image_yscale, image_angle, c_white, .7);	
	}
		
	surface_reset_target();
	draw_surface(surf,0,0)
} else {
	surf = surface_create(room_width, room_height);	
}