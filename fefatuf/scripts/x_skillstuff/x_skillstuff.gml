enum SKILLS {
	NULL,
	#region mechanics
	CANTO,
	WAIT,
	ATTACK,
	#endregion
	#region heritage
	NAGA,
	#endregion
	#region skills
	LUNA,
	#endregion
	#region class
	CRIT10,
	#endregion
	#region personal
	MONEYMAKER,
	#endregion
	#region size
	SIZE
	#endregion
}

enum SKILLTYPE {
	NULL,
	MECHANIC, //mechanics
	HERITAGE, //divinity and crests
	SKILL, //common skill
	CLASS, //class modifiers
	PERSONAL, //personal skill
}

global.x_skillmanager = { //yeah i totally just stole this from market bread man im sorry
	ReferenceSkillList: array_create(SKILLS.SIZE),
	BindSkill: function(skill, index) {
		ReferenceSkillList[index] = skill;
	},
}

function c_getskillbyid(index) {
	var skill = global.x_skillmanager.ReferenceSkillList[index];
	if !skill {
		log("item index " + string(index) + " isnt bound! make sure to bind that shit!"); 
		return global.x_skillmanager.ReferenceSkillList[SKILLS.NULL];
	}
	return skill;
}
function c_getidbyskill(skill) {
	for (var i=0; i<SKILLS.SIZE; i++) {
		if(c_getskillbyid(i) == skill) return i;
	}
}