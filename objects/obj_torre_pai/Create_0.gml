tower_index = id;
previous_tower = noone;

if obj_player.last_tower != noone {
	
	var _list = ds_list_create();
	
	var _num = collision_line_list(x, y, obj_player.last_tower.x, obj_player.last_tower.y, obj_enemy, true, true, _list, false);
	
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        _list[| i].is_congelado = true;
	    }
	}
	ds_list_destroy(_list);
}

is_proximo = false;

