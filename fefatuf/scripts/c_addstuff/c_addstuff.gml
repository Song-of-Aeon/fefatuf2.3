function c_addstuff(target, thing, evaluate=true) {
	with target {
		thing = clamp(thing, 0, STUFF.SIZE);
		array_push(inventory, c_getstuffbyid(thing));
		if !evaluate {
			//with target c_skilleval();
			with target c_stateval();
		}
	}
}

/*function c_skilleval() {
	var i;
	c_resethooks();
	for (i=0; i<ds_list_size(skills); i++) {
		var lookingitem = c_getskillbyid(skills[|i]);
		//log(lookingitem.name);
		//log(i);
		var names = variable_struct_get_names(hooks);
		for(var j = 0; j < array_length(names); j++) {
			func = variable_struct_get(hooks, names[j]);
			if variable_struct_exists(lookingitem, names[j]) {
				ds_list_add(func, variable_struct_get(lookingitem, names[j]));
			}
		}
	}
}*/