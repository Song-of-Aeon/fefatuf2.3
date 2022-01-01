skillgen({
	onstats: function(me=theunit, enemy=youunit) {
		me.effstats.crit += 10;
	},
	name: "luna",
	description: "skill/2 chance to halve effective enemy defense.",
	type: SKILLTYPE.CLASS
}, SKILLS.CRIT10);

//reset effective stats for every unit after every action