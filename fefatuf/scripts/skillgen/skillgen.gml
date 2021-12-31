function skillgen(skill, id) {
	/*var guys = variable_struct_get_names(global.defdata);
	var i;
	for (i=0; i<array_length(guys); i++) {
		if !variable_struct_exists(skill, guys[i]) {
			variable_struct_set(skill, guys[i], variable_struct_get(global.defdata, guys[i]));
		}
	}*/
	global.x_skillmanager.BindSkill(skill, id);
}

