// Variáveis de direção 

right = -1;
up = -1;
left = -1;
down = -1;

// Variáveis de movimentação

hspd = -1;
vspd = -1;
spd = 0.5;
dir = -1;

surface = -1;

is_viajando = false;

linha_dir = -1;

last_tower = instance_find(obj_torre, 0);
new_tower = noone;

// Variável global para armazenar as linhas desenhadas (obsoleto...)
// global.lines = ds_list_create(); // Crie uma lista de dados para armazenar as linhas

current_tower = noone;

foi_pressionado = false;