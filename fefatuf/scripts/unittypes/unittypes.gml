function basicunit(name, sprite, hp, str, mag, skl, spd, lck, def, res, mov, lv) {
	return new unit({full: "", nick: name, secret:""}, {idle: sprite},
	hp, str, mag, skl, spd, lck, def, res, mov,
	lv, 0, 0, 0/*,
	{money_:0, inventory_:[], skills_:[], mechanics_:[],
	class_:0, leader_ : new unit(), support_:{s:[], a:[], b:[], c:[]}, statcapmod_:[],
	divinity_: [], biorhythm_:[], affinity_:0, lord_:false, archetype_:0}*/);
}

function fe14unit(basicunit_, class_, skills_, supports_, statcapmod_, divinity_) {
	basicunit_.class = class_;
	basicunit_.skills = skills_;
	basicunit_.supports = supports_;
	basicunit_.statcapmod = statcapmod_;
	basicunit_.divinity = divinity_;
}

//classes are strings through enum

enum lol {
	//five = "five"
}

/*

hit 30, 87%
crit *3, 10%
astra 15*5, 4%

everything, even wait, is a "skill" (module)

*/