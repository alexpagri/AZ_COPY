



ini_open("settings_sv.ini");

//DO NOT EDIT HERE



global.delay_tillend=ini_read_real("settings", "delay_tillend", 0);
global.cooldown_tillend=ini_read_real("settings", "cooldown_tillend", 0);


global.phy_spd=ini_read_real("settings", "phy_spd", 0);
global.phy_iter=ini_read_real("settings", "phy_iter", 0);
global.r_speed=ini_read_real("settings", "r_speed", 0);
global.cl_tck=ini_read_real("settings", "cl_tck", 0);
global.sv_tck=ini_read_real("settings", "sv_tck", 0);
global.sv_tck_l1=ini_read_real("settings", "sv_tck_l1", 0);
global.sv_tck_l2=ini_read_real("settings", "sv_tck_l2", 0);
global.sv_tck_prec=ini_read_real("settings", "sv_tck_prec", 0);


global.sdelay=ini_read_real("settings", "sdelay", 0);

global.tank_mindist=ini_read_real("settings", "tank_mindist", 0);


global.wall_max_c=ini_read_real("settings", "wall_max_c", 0);
global.wall_min_c=ini_read_real("settings", "wall_min_c", 0);


blocksize=ini_read_real("settings", "blocksize", 0);

minblocks=ini_read_real("settings", "minblocks", 0);

grid_density=ini_read_real("settings", "grid_density", 0);
maxw=ini_read_real("settings", "maxw", 0);
maxh=ini_read_real("settings", "maxh", 0);
minw=ini_read_real("settings", "minw", 0);
minh=ini_read_real("settings", "minh", 0);
wall_width=ini_read_real("settings", "wall_width", 0);
wall_length=ini_read_real("settings", "wall_length", 0);




global.shake_tottime=ini_read_real("settings", "shake_tottime", 0);
global.shake_mag=ini_read_real("settings", "shake_mag", 0);
global.shake_freq=ini_read_real("settings", "shake_freq", 0);


global.chkdist=ini_read_real("settings", "chkdist", 0);



global.bgcolor=ini_read_real("settings", "bgcolor", 0);
global.wall_color=ini_read_real("settings", "wall_color", 0);




global.xdist=ini_read_real("settings", "xdist", 0);
global.ydist=ini_read_real("settings", "ydist", 0);

global.bonus_radius=ini_read_real("settings", "bonus_radius", 0);
global.bonus_thick=ini_read_real("settings", "bonus_thick", 0);
global.minigun_balls1_radius=ini_read_real("settings", "minigun_balls1_radius", 0);
global.rocket2_radius=ini_read_real("settings", "rocket2_radius", 0);
global.lazor_radius=ini_read_real("settings", "lazor_radius", 0);
global.bomb4_radius=ini_read_real("settings", "bomb4_radius", 0);
global.projectile0_radius=ini_read_real("settings", "projectile0_radius", 0);
global.bomb4_shatter_l=ini_read_real("settings", "bomb4_shatter_l", 0);

//global.aa=ini_read_real("settings", "aa", 0);


ini_close();
















////////////////////////////////////////////////////////////////////////////



