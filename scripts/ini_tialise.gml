if(!file_exists("settings.ini"))
{
f1=file_text_open_write("settings.ini");
file_text_close(f1);
}

ini_open("settings.ini");


///EDIT THESE VALUES




if(!ini_key_exists("settings", "mp_color_r"))ini_write_real("settings", "mp_color_r", 255);
if(!ini_key_exists("settings", "mp_color_g"))ini_write_real("settings", "mp_color_g", 0);
if(!ini_key_exists("settings", "mp_color_b"))ini_write_real("settings", "mp_color_b", 0);



if(!ini_key_exists("settings", "sdelay"))ini_write_real("settings", "sdelay", 30);


if(!ini_key_exists("settings", "tank_mindist"))ini_write_real("settings", "tank_mindist", 15);

if(!ini_key_exists("settings", "wall_max_c"))ini_write_real("settings", "wall_max_c", 50);
if(!ini_key_exists("settings", "wall_min_c"))ini_write_real("settings", "wall_min_c", 30);

if(!ini_key_exists("settings", "suicide_score_modif"))ini_write_real("settings", "suicide_score_modif", -1);


if(!ini_key_exists("settings", "score_dead"))ini_write_real("settings", "score_dead", 1);


if(!ini_key_exists("settings", "multi_removeall"))ini_write_real("settings", "multi_removeall", 1);

if(!ini_key_exists("settings", "blocksize"))ini_write_real("settings", "blocksize", 32);

if(!ini_key_exists("settings", "minblocks"))ini_write_real("settings", "minblocks", 500);

if(!ini_key_exists("settings", "grid_density"))ini_write_real("settings", "grid_density", 16);
if(!ini_key_exists("settings", "maxw"))ini_write_real("settings", "maxw", 800);
if(!ini_key_exists("settings", "maxh"))ini_write_real("settings", "maxh", 600);
if(!ini_key_exists("settings", "minw"))ini_write_real("settings", "minw", 640);
if(!ini_key_exists("settings", "minh"))ini_write_real("settings", "minh", 480);
if(!ini_key_exists("settings", "wall_width"))ini_write_real("settings", "wall_width", 4);
if(!ini_key_exists("settings", "wall_length"))ini_write_real("settings", "wall_length", 68);








if(!ini_key_exists("settings", "shake_tottime"))ini_write_real("settings", "shake_tottime", 3);
if(!ini_key_exists("settings", "shake_mag"))ini_write_real("settings", "shake_mag", 0.01);
if(!ini_key_exists("settings", "shake_freq"))ini_write_real("settings", "shake_freq", 3);





if(!ini_key_exists("settings", "sdist"))ini_write_real("settings", "sdist", 16);
if(!ini_key_exists("settings", "chkdist"))ini_write_real("settings", "chkdist", 1);
if(!ini_key_exists("settings", "projectile0_life"))ini_write_real("settings", "projectile0_life", 7);
if(!ini_key_exists("settings", "projectile0_speed"))ini_write_real("settings", "projectile0_speed", 3);
if(!ini_key_exists("settings", "projectile0_radius"))ini_write_real("settings", "projectile0_radius", 3);

if(!ini_key_exists("settings", "bomb4_life"))ini_write_real("settings", "bomb4_life", 10);
if(!ini_key_exists("settings", "bomb4_speed"))ini_write_real("settings", "bomb4_speed", 7);
if(!ini_key_exists("settings", "bomb4_radius"))ini_write_real("settings", "bomb4_radius", 6);
if(!ini_key_exists("settings", "bomb4_shatter_speed"))ini_write_real("settings", "bomb4_shatter_speed", 5);
if(!ini_key_exists("settings", "bomb4_shatter_s_delay"))ini_write_real("settings", "bomb4_shatter_s_delay", 0.2);
if(!ini_key_exists("settings", "bomb4_shatter_max_speed"))ini_write_real("settings", "bomb4_shatter_max_speed", 150);
if(!ini_key_exists("settings", "bomb4_shatter_min_accel"))ini_write_real("settings", "bomb4_shatter_min_accel", 5);
if(!ini_key_exists("settings", "bomb4_shatter_max_accel"))ini_write_real("settings", "bomb4_shatter_max_accel", 5);
if(!ini_key_exists("settings", "bomb4_shatter_l"))ini_write_real("settings", "bomb4_shatter_l", 5);
if(!ini_key_exists("settings", "bomb4_shatter_count"))ini_write_real("settings", "bomb4_shatter_count", 40);
if(!ini_key_exists("settings", "bomb4_shatter_chance"))ini_write_real("settings", "bomb4_shatter_chance", 3);
if(!ini_key_exists("settings", "bomb4_shatter_ang_imp"))ini_write_real("settings", "bomb4_shatter_ang_imp", 1);

if(!ini_key_exists("settings", "lazor_help_life"))ini_write_real("settings", "lazor_help_life", 500);
if(!ini_key_exists("settings", "lazor_help_speed"))ini_write_real("settings", "lazor_help_speed", 10);
if(!ini_key_exists("settings", "lazor_help_radius"))ini_write_real("settings", "lazor_help_radius", 5);

if(!ini_key_exists("settings", "lazor_life"))ini_write_real("settings", "lazor_life", 0.5);
if(!ini_key_exists("settings", "lazor_speed"))ini_write_real("settings", "lazor_speed", 50);
if(!ini_key_exists("settings", "lazor_radius"))ini_write_real("settings", "lazor_radius", 3.5);

if(!ini_key_exists("settings", "rocket2_life"))ini_write_real("settings", "rocket2_life", 15);
if(!ini_key_exists("settings", "rocket2_speed"))ini_write_real("settings", "rocket2_speed", 20);
if(!ini_key_exists("settings", "rocket2_radius"))ini_write_real("settings", "rocket2_radius", 8);
if(!ini_key_exists("settings", "rocket2_catch_up"))ini_write_real("settings", "rocket2_catch_up", 0.1);
if(!ini_key_exists("settings", "rocket2_ghost_speed"))ini_write_real("settings", "rocket2_ghost_speed", 15);
if(!ini_key_exists("settings", "rocket2_angdiff"))ini_write_real("settings", "rocket2_angdiff", 0);
if(!ini_key_exists("settings", "rocket2_init_timer"))ini_write_real("settings", "rocket2_init_timer", 3);
if(!ini_key_exists("settings", "rocket2_speedup_timer"))ini_write_real("settings", "rocket2_speedup_timer", 3.1);
if(!ini_key_exists("settings", "rocket2_speedup_factor"))ini_write_real("settings", "rocket2_speedup_factor", 0.01);
if(!ini_key_exists("settings", "rocket2_speedup_max"))ini_write_real("settings", "rocket2_speedup_max", 300);

if(!ini_key_exists("settings", "minigun_balls1_life"))ini_write_real("settings", "minigun_balls1_life", 5);
if(!ini_key_exists("settings", "minigun_balls1_speed"))ini_write_real("settings", "minigun_balls1_speed", 1);
if(!ini_key_exists("settings", "minigun_balls1_radius"))ini_write_real("settings", "minigun_balls1_radius", 2);
if(!ini_key_exists("settings", "minigun_balls1_spinup_time"))ini_write_real("settings", "minigun_balls1_spinup_time", 0.35);
if(!ini_key_exists("settings", "minigun_balls1_firerate"))ini_write_real("settings", "minigun_balls1_firerate", 25);
if(!ini_key_exists("settings", "minigun_balls1_deviation"))ini_write_real("settings", "minigun_balls1_deviation", 3);
if(!ini_key_exists("settings", "minigun_balls1_time"))ini_write_real("settings", "minigun_balls1_time", 5);


if(!ini_key_exists("settings", "bgcolor"))ini_write_real("settings", "bgcolor", merge_colour(c_silver,c_white,0.5));
if(!ini_key_exists("settings", "control_speed"))ini_write_real("settings", "control_speed", 40);
if(!ini_key_exists("settings", "control_ang"))ini_write_real("settings", "control_ang", 20);
if(!ini_key_exists("settings", "wall_color"))ini_write_real("settings", "wall_color", c_dkgray);


if(!ini_key_exists("settings", "bonus_radius"))ini_write_real("settings", "bonus_radius", 10);
if(!ini_key_exists("settings", "bonus_thick"))ini_write_real("settings", "bonus_thick", 2);
if(!ini_key_exists("settings", "bonus_maximum"))ini_write_real("settings", "bonus_maximum", 50);
if(!ini_key_exists("settings", "bonus_spawn"))ini_write_real("settings", "bonus_spawn", 3);
if(!ini_key_exists("settings", "bonus_mindist"))ini_write_real("settings", "bonus_mindist", 30);

if(!ini_key_exists("settings", "delay_tillend"))ini_write_real("settings", "delay_tillend", 3);
if(!ini_key_exists("settings", "cooldown_tillend"))ini_write_real("settings", "cooldown_tillend", 0.5);


if(!ini_key_exists("settings", "xdist"))ini_write_real("settings", "xdist", 0);
if(!ini_key_exists("settings", "ydist"))ini_write_real("settings", "ydist", 64);

if(!ini_key_exists("settings", "aa"))ini_write_real("settings", "aa", 4);

ini_close();


ini_open("settings.ini");

//DO NOT EDIT HERE



global.mp_color_r=ini_read_real("settings", "mp_color_r", 0);
global.mp_color_g=ini_read_real("settings", "mp_color_g", 0);
global.mp_color_b=ini_read_real("settings", "mp_color_b", 0);


global.sdelay=ini_read_real("settings", "sdelay", 0);

global.tank_mindist=ini_read_real("settings", "tank_mindist", 0);


global.wall_max_c=ini_read_real("settings", "wall_max_c", 0);
global.wall_min_c=ini_read_real("settings", "wall_min_c", 0);


global.suicide_score_modif=ini_read_real("settings", "suicide_score_modif", 0);



global.score_dead=ini_read_real("settings", "score_dead", 0);


global.multi_removeall=ini_read_real("settings", "multi_removeall", 0);


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





global.sdist=ini_read_real("settings", "sdist", 0);
global.chkdist=ini_read_real("settings", "chkdist", 0);
global.projectile0_life=ini_read_real("settings", "projectile0_life", 0);
global.projectile0_speed=ini_read_real("settings", "projectile0_speed", 0);
global.projectile0_radius=ini_read_real("settings", "projectile0_radius", 0);

global.bomb4_life=ini_read_real("settings", "bomb4_life", 0);
global.bomb4_speed=ini_read_real("settings", "bomb4_speed", 0);
global.bomb4_radius=ini_read_real("settings", "bomb4_radius", 0);
global.bomb4_shatter_speed=ini_read_real("settings", "bomb4_shatter_speed", 0);
global.bomb4_shatter_s_delay=ini_read_real("settings", "bomb4_shatter_s_delay", 0);
global.bomb4_shatter_max_speed=ini_read_real("settings", "bomb4_shatter_max_speed", 0);
global.bomb4_shatter_min_accel=ini_read_real("settings", "bomb4_shatter_min_accel", 0);
global.bomb4_shatter_max_accel=ini_read_real("settings", "bomb4_shatter_max_accel", 0);
global.bomb4_shatter_l=ini_read_real("settings", "bomb4_shatter_l", 0);
global.bomb4_shatter_count=ini_read_real("settings", "bomb4_shatter_count", 0);
global.bomb4_shatter_chance=ini_read_real("settings", "bomb4_shatter_chance", 0);
global.bomb4_shatter_ang_imp=ini_read_real("settings", "bomb4_shatter_ang_imp", 0);

global.lazor_help_life=ini_read_real("settings", "lazor_help_life", 0);
global.lazor_help_speed=ini_read_real("settings", "lazor_help_speed", 0);
global.lazor_help_radius=ini_read_real("settings", "lazor_help_radius", 0);

global.lazor_life=ini_read_real("settings", "lazor_life", 0);
global.lazor_speed=ini_read_real("settings", "lazor_speed", 0);
global.lazor_radius=ini_read_real("settings", "lazor_radius", 0);

global.rocket2_life=ini_read_real("settings", "rocket2_life", 0);
global.rocket2_speed=ini_read_real("settings", "rocket2_speed", 0);
global.rocket2_radius=ini_read_real("settings", "rocket2_radius", 0);
global.rocket2_catch_up=ini_read_real("settings", "rocket2_catch_up", 0);
global.rocket2_ghost_speed=ini_read_real("settings", "rocket2_ghost_speed", 0);
global.rocket2_angdiff=ini_read_real("settings", "rocket2_angdiff", 0);
global.rocket2_init_timer=ini_read_real("settings", "rocket2_init_timer", 0);
global.rocket2_speedup_timer=ini_read_real("settings", "rocket2_speedup_timer", 0);
global.rocket2_speedup_factor=ini_read_real("settings", "rocket2_speedup_factor", 0);
global.rocket2_speedup_max=ini_read_real("settings", "rocket2_speedup_max", 0);

global.minigun_balls1_life=ini_read_real("settings", "minigun_balls1_life", 0);
global.minigun_balls1_speed=ini_read_real("settings", "minigun_balls1_speed", 0);
global.minigun_balls1_radius=ini_read_real("settings", "minigun_balls1_radius", 0);
global.minigun_balls1_spinup_time=ini_read_real("settings", "minigun_balls1_spinup_time", 0);
global.minigun_balls1_firerate=ini_read_real("settings", "minigun_balls1_firerate", 0);
global.minigun_balls1_deviation=ini_read_real("settings", "minigun_balls1_deviation", 0);
global.minigun_balls1_time=ini_read_real("settings", "minigun_balls1_time", 0);


global.bgcolor=ini_read_real("settings", "bgcolor", 0);
global.control_speed=ini_read_real("settings", "control_speed", 0);
global.control_ang=ini_read_real("settings", "control_ang", 0);
global.wall_color=ini_read_real("settings", "wall_color", 0);


global.bonus_radius=ini_read_real("settings", "bonus_radius", 0);
global.bonus_thick=ini_read_real("settings", "bonus_thick", 0);
global.bonus_maximum=ini_read_real("settings", "bonus_maximum", 0);
global.bonus_spawn=ini_read_real("settings", "bonus_spawn", 0);
global.bonus_mindist=ini_read_real("settings", "bonus_mindist", 0);

global.delay_tillend=ini_read_real("settings", "delay_tillend", 0);
global.cooldown_tillend=ini_read_real("settings", "cooldown_tillend", 0);


global.xdist=ini_read_real("settings", "xdist", 0);
global.ydist=ini_read_real("settings", "ydist", 0);

global.aa=ini_read_real("settings", "aa", 0);


ini_close();
















////////////////////////////////////////////////////////////////////////////






