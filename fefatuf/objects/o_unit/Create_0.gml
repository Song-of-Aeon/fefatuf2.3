name = "marts"
sprite = s_beta;
data = {
	name: "marts",
	sprite: s_beta,
	hp: 5,
	str: 5,
	mag: 5,
	skl: 5,
	spd: 5,
	lck: 5,
	def: 5,
	res: 5,
	mov: 5,
	skills: ds_list_create(),
	inventory: [],
}

//on:
//turnstart
//attack
//gethit
//commandmenu
//statmod

hooks = {
	onturnstart: makeEmptyHook(),
	onattack: makeEmptyHook(),
	onhit: makeEmptyHook(),
	commandmenu: makeEmptyHook(),
	statmod: makeEmptyHook(),
}

pos = {
	x: 0,
	y: 0,
}

waiting = false;
commands = ["Attack", "Talk", "Equip", "Wait"];