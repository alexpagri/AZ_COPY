randomize();

globalvar grid_density;
globalvar grid_walls;
globalvar blocksize;
globalvar wall_width;
globalvar wall_length;
globalvar minblocks;
globalvar grid_matrix;

global.sdist=0;
global.chkdist=1;
global.projectile0_life=10;
global.projectile0_speed=2;
global.projectile0_radius=3;

global.lazor_help_life=500;
global.lazor_help_speed=10;
global.lazor_help_radius=5;

global.lazor_life=0.5;
global.lazor_speed=30;
global.lazor_radius=2;

global.rocket2_life=15;
global.rocket2_speed=10;
global.rocket2_radius=8;
global.rocket2_catch_up=0.03;
global.rocket2_ghost_speed=5;
global.rocket2_angdiff=0;
global.rocket2_init_timer=5;
global.rocket2_speedup_timer=6;
global.rocket2_speedup_factor=0.0001;
global.rocket2_speedup_max=20;

global.minigun_balls1_life=5;
global.minigun_balls1_speed=1;
global.minigun_balls1_radius=2;
global.minigun_balls1_spinup_time=1.5;
global.minigun_balls1_firerate=15;
global.minigun_balls1_deviation=3;
global.minigun_balls1_time=15;


blocksize=32;//must be 2*k, k > Z

minblocks=500;

grid_density=16;//must be 2*k, k > Z
//32*20=640
//32*15=480
maxw=1280;
maxh=720;
minw=640;
minh=480;
chance=irandom_range(30,70);
chance_w=irandom_range(30,70);
wall_width=4;
wall_length=68;

global.i_1_scr=2*blocksize*irandom_range(minw/blocksize/2,maxw/blocksize/2);
global.i_2_scr=2*blocksize*irandom_range(minh/blocksize/2,maxh/blocksize/2);

globalvar n;
globalvar m;

n=global.i_1_scr/blocksize;
m=global.i_2_scr/blocksize;

for(i=0;i<=n;i++)for(j=0;j<=m;j++)
{
if(i==0 || i==n)
{
    if((i)%2==0 && (j)%2==1)
    grid_walls[i,j]=3;
    else grid_walls[i,j]=0;
}
else if(j==0 || j==m)
{
    if((i)%2==1 && (j)%2==0)
    grid_walls[i,j]=2;
    else grid_walls[i,j]=0;
}
else if((i)%2==1 && (j)%2==0) 
{
    if(irandom(100)<=chance)grid_walls[i,j]=2;
    else grid_walls[i,j]=0;
}
else if((i)%2==0 && (j)%2==1) 
{
    if(irandom(100)<=chance_w)grid_walls[i,j]=3;
    else grid_walls[i,j]=0;
}
else grid_walls[i,j]=0;
}


//global.i_1_scr=640;
//global.i_2_scr=480;

room_set_persistent(room1,true);

room_goto(room1);
