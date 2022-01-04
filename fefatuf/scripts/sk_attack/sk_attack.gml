skillgen({
	command: {
		name: "Attack",
		weight: 0,
		effect: munction(function() {
			with SONGWEAVER {
				set = rangegen(selectedunit.pos.x, selectedunit.pos.y, 2);
				state = st_selecting;
				drawstate = st_selectdraw;
				selecteffect = munction(function() {
					var guy = global.map[pos.x][pos.y].units[0];
					if guy != 0 {
						//log(global.map[pos.x][pos.y].units[0]);
						if guy.alignment != turn {
						//selectedunit = permanentunit;
							//guy.hp -= 2;
							c_attack(selectedunit, guy);
							backeffect();
							state = st_selecting;
							drawstate = st_selectdraw;
							endunit(selectedunit);
							selectedunit = 0;
						}
					}
				});
				backeffect = munction(function() {
					state = st_commanding;
					drawstate = st_commanddraw;
					selecteffect = c_pickunit;
					backeffect = c_returnunit;
				});
			}
		}),
	},
	name: "attack",
	description: "get shitted",
	type: SKILLTYPE.MECHANIC
}, SKILLS.ATTACK);

//