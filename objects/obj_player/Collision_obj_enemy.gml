// Se puder tomar dano
if alarm[0] <= 0 and !is_viajando {
	vida -= 10;
	alarm[0] = 180;
	instance_create_layer(other.x, other.y, "Instances", obj_explosion);
	instance_destroy(other);
}

// Se estiver viajando
if is_viajando {
	instance_create_layer(other.x, other.y, "Instances", obj_explosion);
	instance_destroy(other);	
	torres_disponiveis++;
}