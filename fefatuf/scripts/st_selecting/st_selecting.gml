function st_selecting() {
	hput = rightp-leftp;
	vput = downp-upp;
	pos.x += hput;
	pos.y += vput;
	pos.x = clamp(pos.x, 0, array_length(global.map));
	pos.y = clamp(pos.y, 0, array_length(global.map[pos.x]));
	
	if select {
		log(string(pos.x) + ", " + string(pos.y) + " is " + string(global.map[pos.x][pos.y].tiletype));
		if selectedunit {
			var xdif = pos.x - selectedunit.pos.x;
			var ydif = pos.y - selectedunit.pos.y;
			if abs(xdif) + abs(ydif) <= selectedunit.mov {
				c_moveunit(pos.x, pos.y, selectedunit);
				selectedunit = 0;
			}
		} else {
			if global.map[pos.x][pos.y].units[0] != 0 {
				selectedunit = global.map[pos.x][pos.y].units[0];
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