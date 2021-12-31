

//on:
//turnstart
//attack
//gethit
//commandmenu
//statmod






enum ARCHETYPE {
	NULL,
	SHADOWDRAGON,
	GAIDEN,
	MYSTERY,
	GENEALOGY,
	THRACIA,
	BINDINGBLADE,
	BLAZINGBLADE,
	SACREDSTONES,
	PATHOFRADIANCE,
	RADIANTDAWN,
	SHADOWDRAGON2,
	MYSTERY2,
	AWAKENING,
	FATES,
	ECHOES,
	THREEHOUSES,
	
	INTEGRATED
}

global.archetypedata = [
	{mechanics: []}
]

function unit(name_={full: "nanashi muzai", nick: "nanashi", secret: "chara"}, sprite_={idle: s_beta}) constructor {
	
}


function unit(name_={full: "nanashi muzai", nick: "nanashi", secret: "chara"}, sprite_={idle: s_beta},
hp_=5, str_=5, mag_=5, skl_=5, spd_=5, lck_=5, def_=5, res_=5, mov_=5,
lv_=1, con_=0, chm_=0, ath_=0/*,
extdata={money_:500, inventory_:[], skills_:[], mechanics_:[],
class_:0, leader_ : new unit(), supports_:{s:[], a:[], b:[], c:[]}, statcapmod_:[],
divinity_:[], biorhythm_:[0, 1], affinity_:0, lord_:false, archetype_:0}*/) constructor {


	name = name_;
	sprite = sprite_;
	
	hp = hp_;
	str = str_;
	mag = mag_;
	skl = skl_;
	spd = spd_;
	lck = lck_;
	def = def_;
	res = res_;
	mov = mov_;
	
	lv = lv_;
	con = con_;
	chm = chm_;
	ath = ath_;
	
	
	//
	/*money = extdata.money_;
	inventory = extdata.inventory_;
	skills = extdata.skills_;
	mechanics = extdata.mechanics_;
	
	class = extdata.class_
	leader = extdata.leader_;
	supports = extdata.supports_;
	statcapmod = extdata.statcapmod_;
	
	divinity = extdata.divinity_;
	biorhythm = extdata.biorhythm_;
	affinity = extdata.affinity_;
	lord = extdata.lord_;
	archetype = extdata.archetype_;*/
	
}

