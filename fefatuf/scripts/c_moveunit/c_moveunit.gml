function c_moveunit(x, y, unit) {
	global.map[unit.pos.x][unit.pos.y].units[0] = 0;
	global.map[x][y].units[0] = unit;
	unit.pos.x = x;
	unit.pos.y = y;
}