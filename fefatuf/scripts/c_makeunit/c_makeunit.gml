function c_makeunit(template, x, y) {
	var stuff = variable_struct_get_names(template);
	var omgimstuff = instance_create(x*global.tilesize, y*global.tilesize, o_unit);
	omgimstuff.pos.x = x;
	omgimstuff.pos.y = y;
	var i;
	log("start");
	for (i=0; i<array_length(stuff); i++) {
		log(stuff[i]);
		variable_instance_set(omgimstuff, stuff[i], variable_struct_get(template, stuff[i]));
	}
	log(string(i) + "end");
	global.map[x][y].units[0] = omgimstuff;
	return omgimstuff;
}
