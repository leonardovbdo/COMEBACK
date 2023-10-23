depth = -y;

// Lógica de movimentação 

right = keyboard_check(ord("D")) or keyboard_check(vk_right);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);

var _xx = right - left;
var _yy = down - up;

if (_xx != 0 or _yy != 0) and !isViajando {
	image_speed = 1;
	dir = point_direction(x, y, x + _xx, y + _yy);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);
	
	if place_meeting(x + hspd, y, obj_block) {
		while !place_meeting(x + sign(hspd), y, obj_block) {
			x += sign(hspd);
		}
		
		hspd = 0;
	}
	
	if place_meeting(x, y + vspd, obj_block) {
		while !place_meeting(x, y + sign(vspd), obj_block) {
			y += sign(vspd);
		}
		
		vspd = 0;
	}

	x += hspd;
	y += vspd;
} else {
	image_speed = 0;
}

if keyboard_check_pressed(ord("X")) {
    new_tower = instance_create_layer(x, y, "Instances", obj_torre);
	new_tower.previous_tower = last_tower;
}


if	keyboard_check(ord("Z")) {
	isViajando = true;
	var _vel = 4;
	var targetTower = instance_nearest(x, y, obj_torre);
	var _dir = point_direction(x, y, targetTower.previous_tower.x, targetTower.previous_tower.y);
	var distance = point_distance(x, y, targetTower.previous_tower.x, targetTower.previous_tower.y);
	
	x+= lengthdir_x(_vel , _dir);
	y+= lengthdir_y(_vel , _dir);
}









