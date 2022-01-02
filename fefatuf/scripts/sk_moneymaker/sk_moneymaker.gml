global.x_skillmanager = { //yeah i totally just stole this from market bread man im sorry
	ReferenceSkillList: array_create(SKILLS.SIZE),
	BindSkill: function(skill, index) {
		ReferenceSkillList[index] = skill;
	},
}

skillgen({
	onstats: function(me=theunit, enemy=youunit) {
		me.effstats.spd += 999;
	},
	name: "moneymaker",
	description: "undefeatable?????",
	type: SKILLTYPE.PERSONAL
}, SKILLS.MONEYMAKER);

//