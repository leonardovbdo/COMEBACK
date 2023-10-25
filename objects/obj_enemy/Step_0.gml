depth = -y;

dir = point_direction(x, y, obj_player.x, obj_player.y);
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

if (hspd > 0) {
    image_xscale = 1; 
} else if (hspd < 0) {
    image_xscale = -1;
}

x += hspd;
y += vspd;

if place_meeting(x, y, obj_player) and obj_player.is_viajando == true {
	instance_destroy();	
}