buf=argument0;
buf_s=argument1;
what=buffer_read(buf, buffer_u8);
if(what==1)
{
if(file_exists("settings_sv.ini"))file_delete("settings_sv.ini");
f1=file_text_open_write("settings_sv.ini");
r1=buffer_read(buf, buffer_string);
while(r1 != "")//just found -3 into debugger :))
{
file_text_write_string(f1, r1);
file_text_writeln(f1);
r1=buffer_read(buf, buffer_string);
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
w2=buffer_read(buf, buffer_u8);//type
lid=buffer_read(buf, buffer_u32);
lix=buffer_read(buf, buffer_f32);
liy=buffer_read(buf, buffer_f32);
if(w2==1 || w2==20 || w2==15)liro=-buffer_read(buf, buffer_f32);
if(w2==1 || w2==12)
{
lir=buffer_read(buf, buffer_u8);
lig=buffer_read(buf, buffer_u8);
lib=buffer_read(buf, buffer_u8);
}
if(w2==20)bid=buffer_read(buf, buffer_u8);
if(is_undefined(ds_map_find_value(ent_map, lid)))
{
pr9=instance_create(lix, liy, obj_ghost);
pr9.tpe=w2;
pr9.lid=lid;
pr9.xo=lix;
pr9.yo=liy;
ds_map_add(ent_map, lid, pr9);
if(w2==1 || w2==20 || w2==15)
{
pr9.rotation=1;
pr9.rot=liro;
pr9.ro=liro;
}
if(w2==1 || w2==12)pr9.colx=make_colour_rgb(lir, lig, lib);
if(w2==20)pr9.bid=bid;
if(w2==20)with(pr9)event_user(1);
}
else
{
pr9=ds_map_find_value(ent_map, lid);
pr9.x=lix;
pr9.y=liy;
if(w2==1 || w2==20 || w2==15)
{
pr9.rot=liro;
}
with(pr9)event_user(0);
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




if(what==7)//scores
{
lid=1;//custom ds map id for scores !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
assign_id=buffer_read(buf, buffer_u16);
a1=buffer_read(buf, buffer_s16);
a2=buffer_read(buf, buffer_s16);
for(yu=0;yu<assign_id;yu++)
{
lr=buffer_read(buf, buffer_u8);
lg=buffer_read(buf, buffer_u8);
lb=buffer_read(buf, buffer_u8);
colorvect[yu]=make_colour_rgb(lr, lg, lb);
score2[yu]=buffer_read(buf, buffer_s16);
}
if(is_undefined(ds_map_find_value(ent_map, lid)))
{
pr9=instance_create(lix, liy, obj_ghost);
pr9.lid=lid;
pr9.tpe=7;
ds_map_add(ent_map, lid, pr9);

}
else
{
pr9=ds_map_find_value(ent_map, lid);

}
}






if(what==8)//lazor
{
lid=buffer_read(buf, buffer_u32);
lix=buffer_read(buf, buffer_f32);
liy=buffer_read(buf, buffer_f32);
lir=buffer_read(buf, buffer_u8);
lig=buffer_read(buf, buffer_u8);
lib=buffer_read(buf, buffer_u8);
cpo=buffer_read(buf, buffer_u16);
if(is_undefined(ds_map_find_value(ent_map, lid)))
{
pr9=instance_create(lix, liy, obj_ghost);
for(f=0;f<cpo;f++)
{
pr9.cpox[f]=buffer_read(buf, buffer_f32);
pr9.cpoy[f]=buffer_read(buf, buffer_f32);
}
pr9.cpo=cpo;
pr9.tpe=8;
pr9.lid=lid;
pr9.xo=lix;
pr9.yo=liy;
ds_map_add(ent_map, lid, pr9);
pr9.colx=make_colour_rgb(lir, lig, lib);
}
else
{
pr9=ds_map_find_value(ent_map, lid);
for(f=0;f<cpo;f++)
{
pr9.cpox[f]=buffer_read(buf, buffer_f32);
pr9.cpoy[f]=buffer_read(buf, buffer_f32);
}
pr9.cpo=cpo;
pr9.x=lix;
pr9.y=liy;
with(pr9)event_user(0);
}
}







