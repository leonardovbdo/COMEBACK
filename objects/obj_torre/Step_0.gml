depth = -y;

if id = obj_player.last_tower {
	sprite_index = spr_torre_recente;
} else {
	sprite_index = spr_torre;
}

if !is_proximo {
	image_speed = 0;
} else {
	image_speed = random_range(5, 20);
}

is_proximo = false;