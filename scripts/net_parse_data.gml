clid=argument0;
buf=argument1;
buf_s=argument2;
cl_i_id=ds_map_find_value(clmap,clid);
what=buffer_read(buf, buffer_u8);
if(what==1)
{
colr=buffer_read(buf, buffer_u8);//0-255
colg=buffer_read(buf, buffer_u8);//0-255
colb=buffer_read(buf, buffer_u8);//0-255
cl_i_id.lcolor=make_colour_rgb(colr, colg, colb);
with(cl_i_id)event_user(1);
}
else if(what==2)
{
for(yu8=0;yu8<=4;yu8++)
{
k=buffer_read(buf, buffer_u8);//0-1/////////////improvement here!
cl_i_id.key[yu8]=k;
}
with(cl_i_id)event_user(2);
}
