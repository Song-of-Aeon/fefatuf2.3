skillgen({
	onattack: function(me=theunit, enemy=youunit) {
		enemy.effstats.def = floor(-enemy.def/2);
	},
	name: "luna",
	description: "skill/2 chance to halve effective enemy defense.",
	type: SKILLTYPE.SKILL
}, SKILLS.LUNA);

//