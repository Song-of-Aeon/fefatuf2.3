function un_kris() {
	return new unit({full: "Kris Dreemurr", nick: "Kris", secret: environment_get_variable("%USERNAME%")}, {idle: s_notbeta}, {hp: 20, str: 4, mov: 7}, [SKILLS.WAIT, SKILLS.ATTACK], []);
	//return {mov: 6, sans: true};
}