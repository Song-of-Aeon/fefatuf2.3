function c_makeunit(unit, x, y) {
	var stuff = variable_struct_get_names(unit);
	var omgimstuff = instance_create(x*global.tilesize, y*global.tilesize, o_unit);
	omgimstuff.pos.x = x;
	omgimstuff.pos.y = y;
	var i;
	for (i=0; i<array_length(stuff); i++) {
		variable_instance_set(o_unit, stuff[i], variable_struct_get(unit, stuff[i]));
	}
	global.map[x][y].units[0] = omgimstuff;
	return omgimstuff;
}
