rot=argument0;
xx=argument1;
yy=argument2;
ignored=argument3;


pr1=instance_create(xx+global.sdist*cos(rot*pi/180)+1-global.projectile0_radius/2,yy+global.sdist*sin(rot*pi/180)+1-global.projectile0_radius/2,projectile0);

with(pr1)physics_apply_impulse(phy_com_x,phy_com_y,global.projectile0_speed*cos(other.rot*pi/180),global.projectile0_speed*sin(other.rot*pi/180));
pr1.ign=ignored;
