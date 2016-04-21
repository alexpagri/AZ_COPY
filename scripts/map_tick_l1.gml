with(bomb4_shatter)//tpe=15
{
script_execute(net_write_data,(!ns)*5,v_client,15,id,phy_position_x,
phy_position_y,phy_rotation);//ns is 0 when ok
}

with(minigun_balls1)//tpe=11
{
script_execute(net_write_data,5,v_client,11,id,phy_position_x,
phy_position_y);
}

with(lazor)//tpe=8
{
script_execute(net_write_data,8,v_client,id,phy_position_x,
phy_position_y,colour_get_red(sii),colour_get_green(sii),
colour_get_blue(sii),cpo);
}
