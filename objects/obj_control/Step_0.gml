var _side = irandom(1);

if alarm[0] <= 0 {
	if _side == 0 {
		var _xx = irandom_range(camera_get_view_width(view_camera[0]), camera_get_view_width(view_camera[0]) + camera_get_view_width(view_camera[0]));
		var _yy = choose(camera_get_view_height(view_camera[0])/2 - 16, camera_get_view_height(view_camera[0])/2 + camera_get_view_height(view_camera[0]) + 16);
	
		instance_create_layer(_xx, _yy, "Instances", obj_enemy);
	} if _side == 1 {
		var _xx = choose(camera_get_view_width(view_camera[0])/2 -16, camera_get_view_width(view_camera[0])/2 + camera_get_view_width(view_camera[0]) + 16);
		var _yy = irandom_range(camera_get_view_height(view_camera[0]), camera_get_view_height(view_camera[0]) + camera_get_view_height(view_camera[0]));
		
		instance_create_layer(_xx, _yy, "Instances", obj_enemy);
	}
	
	alarm[0] = spawn_timer;
}