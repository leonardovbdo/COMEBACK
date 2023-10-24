sistema = part_system_create();
tipo = part_type_create();
emissor = part_emitter_create(sistema);

tipo_reflexo = part_type_create();

part_type_size(tipo, 1, 1, 0, 0);
part_type_speed(tipo, 0.5, 0.5, 0, 0);
part_type_alpha2(tipo, 1, 0)

part_type_size(tipo_reflexo, 1, 1, 0, 0);
part_type_speed(tipo_reflexo, 0.5, 0.5, 0, 0);
part_type_alpha2(tipo_reflexo, 0.3, 0)


part_type_life(tipo, 10, 130)

part_type_life(tipo_reflexo, 10, 130)