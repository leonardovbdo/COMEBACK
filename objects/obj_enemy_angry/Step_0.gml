depth = -y;

if !is_congelado {

dir = point_direction(x, y, obj_casa.x, obj_casa.y);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

if (hspd > 0) {
    image_xscale = 1; 
} else if (hspd < 0) {
    image_xscale = -1;
}

x += hspd;
y += vspd;
} else if is_congelado {
	sprite_index = spr_enemy_congelado;
	hspd = 0;
	vspd = 0;
}