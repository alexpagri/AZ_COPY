buf=argument0;
buf_s=argument1;
what=buffer_read(buf, buffer_u8);
if(what==1)
{
f1=file_text_open_write("settings_sv.ini");
while(buffer_tell(buf)<buf_s)
{
file_text_write_string(f1, buffer_read(buf, buffer_string));
file_text_writeln(f1);
}
file_text_close(f1);
globalvar grid_density;
globalvar grid_walls;
globalvar blocksize;
globalvar wall_width;
globalvar wall_length;
globalvar minblocks;
globalvar grid_matrix;
globalvar is_ending;
script_execute(ini_tialise_sv);
}
if(what==2)
{
svstart=buffer_read(buf, buffer_u8);
if(svstart)script_execute(map_cl_start);
else script_execute(map_cl_end);
}


if(what==4)
{
global.i_1_scr=buffer_read(buf, buffer_u16);
global.i_2_scr=buffer_read(buf, buffer_u16);
globalvar n;
globalvar m;
n=global.i_1_scr/blocksize;
m=global.i_2_scr/blocksize;
for(i=0;i<=n;i++)for(j=0;j<=m;j++)
{
script_execute(cl_gen_walls, buffer_read(buf, buffer_u8), i, j);
}
script_execute(stepa_init_cl);
}










if(what==5)
{
w2=buffer_read(buf, buffer_u8);
if(w2==1)
{
lid=buffer_read(buf, buffer_u32);
lix=buffer_read(buf, buffer_u16);
liy=buffer_read(buf, buffer_u16);
liro=-buffer_read(buf, buffer_s16);
lir=buffer_read(buf, buffer_u8);
lig=buffer_read(buf, buffer_u8);
lib=buffer_read(buf, buffer_u8);
if(is_undefined(ds_map_find_value(ent_map, lid)))
{
pr9=instance_create(lix, liy, obj_ghost);
pr9.tpe=1;
pr9.lid=lid;
pr9.rot=liro;
ds_map_add(ent_map, lid, pr9);
pr9.colx=make_colour_rgb(lir, lig, lib);
}
else
{
pr9=ds_map_find_value(ent_map, lid);
pr9.x=lix;
pr9.y=liy;
pr9.rot=liro;
}
}
}




if(what==6)
{
//w2=buffer_read(buf, buffer_u8);   //all
lid=buffer_read(buf, buffer_u32);
if(!is_undefined(ds_map_find_value(ent_map, lid)))
{
with(ds_map_find_value(ent_map, lid))instance_destroy();

}
}









