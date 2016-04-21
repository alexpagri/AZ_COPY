if(argument0==1)
{
with(argument1)
{
network_send_packet(cli_id, sv_sett_buf, buffer_get_size(sv_sett_buf));
}
}
if(argument0==2)
{
buf2=buffer_create(2, buffer_fast, 1);
buffer_write(buf2, buffer_u8, 2);
buffer_write(buf2, buffer_u8, svstart);
with(argument1)
{
ready=svstart;
network_send_packet(cli_id, other.buf2, 2);// that OTHER !!! 2 hours !!!
}
buffer_delete(buf2);
}
if(argument0==3)
{

}
if(argument0==4)
{
with(argument1)
{
network_send_packet(cli_id, sv_wall_buf, buffer_get_size(sv_wall_buf));
}
}






if(argument0==5)
{
buf2=buffer_create(1, buffer_grow, 1);
buffer_write(buf2, buffer_u8, 5);
buffer_write(buf2, buffer_u8, argument2);//type
buffer_write(buf2, buffer_u32, argument3);//id
buffer_write(buf2, buffer_f32, argument4);//x
buffer_write(buf2, buffer_f32, argument5);//y
if(argument2==1 || argument2==20 || argument2==15)buffer_write(buf2, buffer_f32, argument6);//rot
if(argument2==1 || argument2==12)
{
buffer_write(buf2, buffer_u8, argument7);//color_r
buffer_write(buf2, buffer_u8, argument8);//color_g
buffer_write(buf2, buffer_u8, argument9);//color_b
}
if(argument2==20)
{
buffer_write(buf2, buffer_u8, argument10);//bonus number
}
with(argument1)
{
if(ready)network_send_packet(cli_id, other.buf2, buffer_get_size(other.buf2));// that OTHER !!! 2 hours !!!
}
buffer_delete(buf2);
}







if(argument0==6)
{
buf2=buffer_create(1, buffer_grow, 1);
buffer_write(buf2, buffer_u8, 6);
//buffer_write(buf2, buffer_u8, 1);//type
buffer_write(buf2, buffer_u32, argument2);//id /// argument2 !
with(argument1)
{
network_send_packet(cli_id, other.buf2, buffer_get_size(other.buf2));// that OTHER !!! 2 hours !!!
}
buffer_delete(buf2);
}








if(argument0==7)
{
buf2=buffer_create(1, buffer_grow, 1);
buffer_write(buf2, buffer_u8, 7);
buffer_write(buf2, buffer_u16, assign_id);//limit max players happens here!
buffer_write(buf2, buffer_s16, main.alarm[1]);//limit max cooldown
buffer_write(buf2, buffer_s16, main.alarm[2]);//limit max tillend
for(yu=0;yu<assign_id;yu++)
{
buffer_write(buf2, buffer_u8, colour_get_red(colorvect[yu]));
buffer_write(buf2, buffer_u8, colour_get_green(colorvect[yu]));
buffer_write(buf2, buffer_u8, colour_get_blue(colorvect[yu]));
buffer_write(buf2, buffer_s16, score2[yu]);
}
with(argument1)
{
network_send_packet(cli_id, other.buf2, buffer_get_size(other.buf2));// that OTHER !!! 2 hours !!!
}
buffer_delete(buf2);
}









if(argument0==8)
{
buf2=buffer_create(1, buffer_grow, 1);
buffer_write(buf2, buffer_u8, 8);
buffer_write(buf2, buffer_u32, argument2);//id
buffer_write(buf2, buffer_f32, argument3);//x
buffer_write(buf2, buffer_f32, argument4);//y
buffer_write(buf2, buffer_u8, argument5);//color_r
buffer_write(buf2, buffer_u8, argument6);//color_g
buffer_write(buf2, buffer_u8, argument7);//color_b
buffer_write(buf2, buffer_u16, argument8);
buffer_write(buf2, buffer_f32, argument2.cpox[0]);
buffer_write(buf2, buffer_f32, argument2.cpoy[0]);
for(f=1;f<argument8;f++)
{
buffer_write(buf2, buffer_f32, argument2.cpox[f]);
buffer_write(buf2, buffer_f32, argument2.cpoy[f]);
}
with(argument1)
{
network_send_packet(cli_id, other.buf2, buffer_get_size(other.buf2));// that OTHER !!! 2 hours !!!
}
buffer_delete(buf2);
}









