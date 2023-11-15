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

last_tower = instance_find(obj_torre_pai, 0);
new_tower = noone;

// Variável global para armazenar as linhas desenhadas (obsoleto...)
// global.lines = ds_list_create(); // Crie uma lista de dados para armazenar as linhas

current_tower = noone;

foi_pressionado = false;

// Combate

vida = 30;
vida_sprites = ds_map_create();

// Defina um dicionário (ou mapeamento) para associar valores de vida aos sprites
ds_map_add(vida_sprites, 30, spr_player);
ds_map_add(vida_sprites, 20, spr_player_metade_vida);
ds_map_add(vida_sprites, 10, spr_player_zero_vida);

alarm[0] = 0;

// tempo flashing
tempo_flash = 12;
alarm[1] = tempo_flash;

// Torres
pode_posicionar_torre = true;
torres_disponiveis = 2;