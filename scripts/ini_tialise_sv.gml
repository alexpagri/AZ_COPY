



ini_open("settings_sv.ini");

//DO NOT EDIT HERE






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

//global.aa=ini_read_real("settings", "aa", 0);


ini_close();
















////////////////////////////////////////////////////////////////////////////




