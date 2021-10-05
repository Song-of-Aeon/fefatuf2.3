function c_moveunit(x, y, unit) {
	global.map[x][y].units[0] = unit;
	global.map[unit.pos.x][unit.pos.y].units[0] = 0;
	
	unit.pos.x = x;
	unit.pos.y = y;
}