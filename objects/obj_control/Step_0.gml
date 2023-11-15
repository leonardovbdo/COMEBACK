var _side = irandom(1);
var _random = random_range(0, 100);

if alarm[0] <= 0 {
	if _side == 0 {
		var _xx = irandom_range(global.cmx, global.cmx + global.cmw);
		var _yy = choose(global.cmy - 16, global.cmy + global.cmh + 16);
	
		if _random > chance_inimigo {
			instance_create_layer(_xx, _yy, "Instances", obj_enemy);
		} else {
			if obj_player.inimigos_mortos > 3 {
				instance_create_layer(_xx, _yy, "Instances", obj_enemy_angry);
			}
		}
	} else if _side == 1 {
		var _xx = choose(global.cmx -16, global.cmx + global.cmw + 16);
		var _yy = irandom_range(global.cmy, global.cmy + global.cmh);
		
		if _random > chance_inimigo {
			instance_create_layer(_xx, _yy, "Instances", obj_enemy);
		} else {
			if obj_player.inimigos_mortos > 3 {
				instance_create_layer(_xx, _yy, "Instances", obj_enemy_angry);
			}
		}
	}
	
	alarm[0] = spawn_timer;
}

if obj_player.inimigos_mortos >= 7 {
	chance_inimigo = 30;	
}