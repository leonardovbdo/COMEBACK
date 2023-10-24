
part_type_direction(tipo, obj_player.linha_dir - 55, obj_player.linha_dir - 10, 0, 10);
part_type_direction(tipo_reflexo, obj_player.linha_dir - 55, obj_player.linha_dir - 10, 0, 10);

if obj_player.is_viajando == true {
	part_emitter_region(sistema, emissor, obj_player.x-3, obj_player.x+3, obj_player.y+3, obj_player.y-3, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(sistema, emissor, tipo, 1);
	
	part_emitter_region(sistema, emissor, obj_player.x-3, obj_player.x+3, obj_player.y+9, obj_player.y+3, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(sistema, emissor, tipo_reflexo, 1);
}