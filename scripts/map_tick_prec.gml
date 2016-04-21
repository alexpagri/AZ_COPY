with(control)//tpe=1
{
script_execute(net_write_data,5,v_client,1,id,phy_position_x,
phy_position_y,phy_rotation,colour_get_red(sii),colour_get_green(sii),
colour_get_blue(sii));
}

with(projectile0)//tpe=10
{
script_execute(net_write_data,5,v_client,10,id,phy_position_x,
phy_position_y);
}

with(rocket2)//tpe=12
{
script_execute(net_write_data,5,v_client,12,id,phy_position_x,
phy_position_y,0,colour_get_red(sii),colour_get_green(sii),
colour_get_blue(sii));
}

with(shake)//tpe=9
{
script_execute(net_write_data,5,v_client,9,id,0,0);
}

