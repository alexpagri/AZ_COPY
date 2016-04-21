//#region: get settings to string & make buffer here!
f1=file_text_open_read("settings.ini");
globalvar sv_sett_buf;
sv_sett_buf=buffer_create(1, buffer_grow, 1);
buffer_write(sv_sett_buf, buffer_u8, 1);
while(!file_text_eof(f1))
{
buffer_write(sv_sett_buf, buffer_string, file_text_read_string(f1));
file_text_readln(f1);
}
file_text_close(f1);
script_execute(net_write_data, 1, v_client);
//buffer_delete(sv_sett_buf);
//#endregion

svstart=1;//for clients started=1
script_execute(net_write_data, 2, v_client);

//#region: get room size + wall matrix
globalvar sv_wall_buf;
sv_wall_buf=buffer_create(1, buffer_grow, 1);
buffer_write(sv_wall_buf, buffer_u8, 4);
buffer_write(sv_wall_buf, buffer_u16, global.i_1_scr);
buffer_write(sv_wall_buf, buffer_u16, global.i_2_scr);
for(i=0;i<=n;i++)for(j=0;j<=m;j++)
{
buffer_write(sv_wall_buf, buffer_u8, grid_walls[i,j]);
}
script_execute(net_write_data, 4, v_client);
//buffer_delete(sv_wall_buf);
//#endregion



