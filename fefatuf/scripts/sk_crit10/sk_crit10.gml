skillgen({
	onstats: function(me=theunit, enemy=youunit) {
		me.effstats.crit += 10;
	},
	name: "luna",
	description: "skill/2 chance to halve effective enemy defense.",
	type: SKILLTYPE.SKILL
}, SKILLS.LUNA);

//reset effective stats for every unit after every action