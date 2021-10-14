c_input();
state = st_selecting;
drawstate = st_selectdraw;
pos = {
	x: 0,
	y: 0
}
selectedunit = false;
permanentunit = 0;

commandeffects = ds_map_create();
commandeffects[?"wait"] = function() {
	state = st_selecting;
	drawstate = st_selectdraw;
	endunit();
}
menu = {
	depth_: 0,
	x: 0,
	y: 0
}