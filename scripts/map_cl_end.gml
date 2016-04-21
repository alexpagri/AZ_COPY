if(instance_exists(obj_wall))with(obj_wall)instance_destroy();
if(instance_exists(obj_ghost))with(obj_ghost)instance_destroy();
if(instance_exists(shake))with(shake)instance_destroy();
ds_map_clear(ent_map);
