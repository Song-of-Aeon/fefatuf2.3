function c_movegrabbedunit(x, y) {
	global.map[x][y].units[0] = selectedunit;
	log(global.map[x][y].units[0]);
	//global.map[x][y].units[0] = deep_copy(unit);
	global.map[selectedunit.pos.x][selectedunit.pos.y].units[0] = 0;
	
	
	selectedunit.pos.x = x;
	selectedunit.pos.y = y;
}

//x1 y1 x2 y2