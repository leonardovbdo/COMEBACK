depth = -y;

if is_proximo {
	sprite_index = spr_torre_proximo;
	image_speed = random_range(1, 5);
} else {
	sprite_index = spr_torre;
	image_speed = 1;
}

is_proximo = false;