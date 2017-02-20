//resolution to init script




room_height=global.i_2_scr;

room_width=global.i_1_scr;

maxroom=max(global.i_2_scr,global.i_1_scr);

view_visible[0]=true;
view_enabled=true;
view_xview[0]=(-global.xdist);
view_yview[0]=(-global.ydist);
view_wview[0]=global.i_1_scr+2*global.xdist;
view_hview[0]=global.i_2_scr+2*global.ydist;
view_surface_id[0]=application_surface;









//application_surface_enable(true);//!!!!!!!!!!!!!!! REM ! Global game settings!

//surface_resize(application_surface,global.i_1_scr+2*global.xdist,global.i_2_scr+2*global.ydist);
window_set_size(global.i_1_scr+2*global.xdist,global.i_2_scr+2*global.ydist);
//window_set_rectangle(0,0,global.i_1_scr,global.i_2_scr);
display_set_gui_maximise(1,1,0,0);
//display_reset(global.aa,false);




switch (os_type)
{
    case os_windows: global.Config = 0; break;
    case os_android: global.Config = 1; break;
    case os_linux: global.Config = 2; break;
    case os_macosx: global.Config = 3; break;
    case os_ios: global.Config = 4; break;
    case os_winphone: global.Config = 5; break;
}


if(os_type==0||os_type==2||os_type==3)global.type=0;
else global.type=1;

background_x[0]=view_xview[0]-wall_width/2;
background_y[0]=view_yview[0]-wall_width/2;
background_color=global.bgcolor;
background_visible[0]=true;
rd=instance_create(0,0,reset_display);
rd.aa=global.aa;
rd.xv=-global.xdist;
rd.yv=-global.ydist;
rd.wv=global.i_1_scr+2*global.xdist;
rd.hv=global.i_2_scr+2*global.ydist;
rd.vsyncx=global.vsyncx;
draw_texture_flush();
