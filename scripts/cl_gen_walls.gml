if(argument0==1)
{
ins=instance_create(blocksize*argument1,blocksize*argument2,obj_wall);
//ins.phy_rotation=0;
ins.ht=wall_width;
ins.wd=wall_width;
with(ins)event_user(1);
}
if(argument0==2)
{
ins=instance_create(blocksize*argument1,blocksize*argument2,obj_wall);
//ins.phy_rotation=0;
ins.ht=wall_width;
ins.wd=wall_length;
with(ins)event_user(1);
}
if(argument0==3)
{
ins=instance_create(blocksize*argument1,blocksize*argument2,obj_wall);
//ins.phy_rotation=0;
ins.wd=wall_width;
ins.ht=wall_length;
with(ins)event_user(1);
}
