depth = -y;

// Lógica de movimentação 

right = keyboard_check(ord("D")) or keyboard_check(vk_right);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);

var _xx = right - left;
var _yy = down - up;

if (_xx != 0 or _yy != 0) and !is_viajando {
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

// Pode posicionar torre área
var _list = ds_list_create();
	
	var _num = collision_circle_list(x, y+5, 27, obj_torre, true, true, _list, false);
	
	if _num > 0 and !is_viajando
	{
		pode_posicionar_torre = false;
	    for (var i = 0; i < _num; ++i;)
	    {
	        _list[| i].is_proximo = true;
	    }
	} else {
		pode_posicionar_torre = true;	
	}
ds_list_destroy(_list);


if keyboard_check_pressed(ord("X")) and !is_viajando and torres_disponiveis > 0 and pode_posicionar_torre {
    new_tower = instance_create_layer(x, y, "Instances", obj_torre);
	new_tower.previous_tower = last_tower;
	
	torres_disponiveis--;
}


// Verifique se a tecla "Z" foi pressionada
if (keyboard_check_pressed(ord("Z"))) {
    var target_tower = instance_place(x, y, obj_torre);
    
    if (target_tower != noone) {
        current_tower = target_tower;
        is_viajando = true;
    }
}

if (current_tower != noone) {
	if current_tower.previous_tower == noone {
		is_viajando = false;	
	} else {
	    var _vel = 4;
	    linha_dir = point_direction(x, y, current_tower.previous_tower.x, current_tower.previous_tower.y);
    
	    // Verifique se o jogador está próximo o suficiente da previous_tower para atualizar a current_tower
	    if (point_distance(x, y, current_tower.previous_tower.x, current_tower.previous_tower.y) < 5) {
	        if (keyboard_check(ord("Z"))) {
	            current_tower = current_tower.previous_tower;
	        } else {
	            // Pare o jogador e defina is_viajando como falso
	            is_viajando = false;
	        }
	    }
		if is_viajando == true {
		    x += lengthdir_x(_vel, linha_dir);
		    y += lengthdir_y(_vel, linha_dir);
		}
	}
}

if is_viajando == false {
	sprite_index = spr_player	
} else {
	sprite_index = spr_player_viajando	
}

// Reiniciar jogo
if keyboard_check(ord("R")) {
	room_restart();	
}


// Combate

// Verifique se o valor de vida existe no dicionário.
if !is_viajando && ds_map_exists(vida_sprites, vida) {
    sprite_index = ds_map_find_value(vida_sprites, vida);
}

if alarm[0] > 0 {
	image_alpha = 0.5;	
} else {
	image_alpha = 1;	
}

if vida <= 0 {
	room_restart();	
}

if alarm[1] <= 0 {
	alarm[1] = tempo_flash;	
}