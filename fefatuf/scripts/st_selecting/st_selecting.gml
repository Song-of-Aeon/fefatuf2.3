function st_selecting() {
	hput = rightp-leftp;
	vput = downp-upp;
	pos.x += hput;
	pos.y += vput;
	pos.x = clamp(pos.x, 0, array_length(global.map));
	pos.y = clamp(pos.y, 0, array_length(global.map[pos.x]));
	
	if select {
		log(string(pos.x) + ", " + string(pos.y) + " is " + string(global.map[pos.x][pos.y].tiletype));
		if selectedunit && global.map[pos.x][pos.y].tiletype != TILES.SOLID {
			var xdif = pos.x - selectedunit.pos.x;
			var ydif = pos.y - selectedunit.pos.y;
			if abs(xdif) + abs(ydif) <= selectedunit.mov {
				log(global.map[pos.x][pos.y].units[0]);
				c_movegrabbedunit(pos.x, pos.y, selectedunit);
				menugen(global.commandstyle);
				state = st_commanding;
				drawstate = st_commanddraw;
				selectedunit = 0;
			}
		} else {
			log(global.map[pos.x][pos.y].units[0]);
			if global.map[pos.x][pos.y].units[0] != 0 {
				log(global.map[pos.x][pos.y].units[0]);
				selectedunit = global.map[pos.x][pos.y].units[0];
				if permanentunit = 0 {
					permanentunit = selectedunit;
				}
				//selectedunit = permanentunit;
			}
		}
	}
	if back {
		if selectedunit {
			selectedunit = 0;
		} else {
			c_makeunit(c_army1()[0], pos.x, pos.y);
		}
	}
}

function st_selectdraw() {
	if selectedunit {
		log(selectedunit);
		var i;
		var j;
		var range = selectedunit.mov;
		var myx = (selectedunit.pos.x*global.tilesize);
		var myy = (selectedunit.pos.y*global.tilesize);
		draw_set_colour(c_aqua);
		draw_set_alpha(0.3);
		for (i=-range; i<range+1; i++) {
			for (j=-range; j<range+1; j++) {
				if abs(i) + abs(j) <= range && global.map[clamp(selectedunit.pos.x+i, 0, 64)][clamp(selectedunit.pos.y+j, 0, 64)].tiletype != TILES.SOLID {
					draw_rectangle(i*global.tilesize+myx, j*global.tilesize+myy, i*global.tilesize+global.tilesize+myx, j*global.tilesize+global.tilesize+myy, false);
				}
			}
		}
		draw_set_alpha(1);
		draw_set_colour(c_black);
	
	}
}