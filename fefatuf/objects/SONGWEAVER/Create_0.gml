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
commandeffects[?"attack"] = function() {
	state = st_selecting;
	drawstate = st_selectdraw;
	c_attack(selectedunit,);
}
menu = {
	depth_: 0,
	x: 0,
	y: 0
}

menuqueue = ds_list_create();

tempx = -10;
tempy = -10;

turn = 0;

army[0] = c_makearmy([un_kris(), new unit()], [2, 3], [1, 1], 0);
army[1] = c_makearmy([un_kris(), new unit()], [10, 11], [10, 10], 1);
set = [];
global.count = 0;