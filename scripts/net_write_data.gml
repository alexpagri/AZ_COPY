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
if(argument2==1)//control
{
buf2=buffer_create(1, buffer_grow, 1);
buffer_write(buf2, buffer_u8, 5);
buffer_write(buf2, buffer_u8, 1);//type
buffer_write(buf2, buffer_u32, argument3);//id
buffer_write(buf2, buffer_u16, argument4);//x
buffer_write(buf2, buffer_u16, argument5);//y
buffer_write(buf2, buffer_s16, argument6);//rot
buffer_write(buf2, buffer_u8, argument7);//color_r
buffer_write(buf2, buffer_u8, argument8);//color_g
buffer_write(buf2, buffer_u8, argument9);//color_b
with(argument1)
{
network_send_packet(cli_id, other.buf2, buffer_get_size(other.buf2));// that OTHER !!! 2 hours !!!
}
buffer_delete(buf2);
}
}
if(argument0==6)
{
if(1)//all
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
}
if(argument0==7)
{
if(argument2==1)//control
{
buf2=buffer_create(1, buffer_grow, 1);
buffer_write(buf2, buffer_u8, 7);
buffer_write(buf2, buffer_u8, 1);//type
buffer_write(buf2, buffer_u16, argument3);//x
buffer_write(buf2, buffer_u16, argument4);//y
buffer_write(buf2, buffer_u8, argument5);//color_r
buffer_write(buf2, buffer_u8, argument6);//color_g
buffer_write(buf2, buffer_u8, argument7);//color_b
with(argument1)
{
network_send_packet(cli_id, other.buf2, buffer_get_size(other.buf2));// that OTHER !!! 2 hours !!!
}
buffer_delete(buf2);
}
}










