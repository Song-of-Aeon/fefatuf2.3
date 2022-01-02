function c_addskill(target, skill) {
	with target {
		skill = clamp(skill, 0, SKILLS.SIZE);
		ds_list_add(skills, skill);
		with target c_skilleval();
		with target c_stateval();
	}
}

function c_skilleval() {
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
}

function c_stateval() {
	var defaults = variable_struct_get_names(defstats);
	for (var i=0; i<array_length(defaults); i++) {
		variable_instance_set(self, defaults[i], variable_struct_get(defstats,defaults[i]));
	}
	//c_dohook();
}

function c_resethooks() {
	var i;
	var hoooks = variable_struct_get_names(hooks);
	for (i=0; i<variable_struct_names_count(hooks); i++) {
		ds_list_destroy(variable_struct_get(hooks, hoooks[i]));
		var j = ds_list_create();
		//variable_struct_set(hooks, hoooks[|i], j);
		hooks[$hoooks[i]] = j;
		j[|0] = NUMBER5;
	}
}

function NUMBER5() {
	///...But nobody came.
}