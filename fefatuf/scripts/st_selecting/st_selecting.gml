function st_selecting() {
	hput = rightp-leftp;
	vput = downp-upp;
	pos.x += hput;
	pos.y += vput;
	pos.x = clamp(pos.x, 0, array_length(global.map));
	pos.y = clamp(pos.y, 0, array_length(global.map[pos.x]));
	
	if select {
		//log(string(pos.x) + ", " + string(pos.y) + " is " + string(global.map[pos.x][pos.y].tiletype));
		if selectedunit && global.map[pos.x][pos.y].tiletype != TILES.SOLID {
			if array_contains(set, global.map[pos.x][pos.y]) {
				//log(global.map[pos.x][pos.y].units[0]);
				c_movegrabbedunit(pos.x, pos.y);
				
				menugen(global.commandstyle);
				c_loadcommands(selectedunit);
				state = st_commanding;
				drawstate = st_commanddraw;
				//selectedunit = 0;
			}
		} else {
			//log(global.map[pos.x][pos.y].units[0]);
			var guy = global.map[pos.x][pos.y].units[0]
			if guy != 0 {
				//log(global.map[pos.x][pos.y].units[0]);
				if guy.alignment = turn && !guy.waiting {
					tempx = pos.x;
					tempy = pos.y;
					selectedunit = guy;
					set = rangegen(selectedunit.pos.x, selectedunit.pos.y, selectedunit.mov);
					if permanentunit = 0 {
						permanentunit = selectedunit;
					}
				} else {}
				//selectedunit = permanentunit;
			}
		}
	}
	if back {
		if selectedunit {
			selectedunit = 0;
		} else {
			//c_makeunit(un_kris(), pos.x, pos.y);
			
		}
	}
	
}

function st_selectdraw() {
	if selectedunit {
		//log(selectedunit);
		var i;
		//var j;
		//var range = selectedunit.mov;
		//var myx = (selectedunit.pos.x*global.tilesize);
		//var myy = (selectedunit.pos.y*global.tilesize);
		
		draw_set_colour(c_aqua);
		draw_set_alpha(0.3);
		/*for (i=-range; i<range+1; i++) {
			for (j=-range; j<range+1; j++) {
				if abs(i) + abs(j) <= range && global.map[clamp(selectedunit.pos.x+i, 0, 64)][clamp(selectedunit.pos.y+j, 0, 64)].tiletype != TILES.SOLID {
					draw_rectangle(i*global.tilesize+myx, j*global.tilesize+myy, i*global.tilesize+global.tilesize+myx, j*global.tilesize+global.tilesize+myy, false);
				}
			}
		}*/
		/*for (i=0; i<array_length(global.map); i++) {
			for (j=0; j<array_length(global.map[i]); j++) {
				if array_contains(set, global.map[i][j]) {
					log(i, j);
					draw_rectangle(i*global.tilesize, j*global.tilesize, i*global.tilesize+global.tilesize, j*global.tilesize+global.tilesize, false);
				}
			}
		}*/
		for (i=0; i<array_length(set); i++) {
			draw_rectangle(
				set[i].x*global.tilesize,
				set[i].y*global.tilesize,
				set[i].x*global.tilesize+global.tilesize,
				set[i].y*global.tilesize+global.tilesize,
			false);
		}
		draw_set_alpha(1);
		draw_set_colour(c_black);
	
	}
}