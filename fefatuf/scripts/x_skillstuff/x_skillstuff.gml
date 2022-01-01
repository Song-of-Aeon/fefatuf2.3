enum SKILLS {
	NULL,
	#region mechanics
	CANTO,
	WAIT,
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
	BindSkill: function(item, index) {
		ReferenceSkillList[index] = item;
	},
}

function c_getskillbyid(index) {
	var skill = global.x_itemmanager.ReferenceSkillList[index];
	if !skill {
		log("item index " + string(index) + " isnt bound! make sure to bind that shit!"); 
		return global.x_itemmanager.ReferenceSkillList[SKILLS.NULL];
	}
	return item;
}
function c_getidbyskill(item){
	for(var i = 0; i < SKILLS.SIZE;i++){
		if(c_getskillbyid(i) == item) return i;
	}
}