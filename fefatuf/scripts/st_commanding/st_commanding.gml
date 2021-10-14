function st_commanding() {
	hput = rightp-leftp;
	vput = downp-upp;
	menu.y += vput;
	if hput {
		select = true;
	}
	
	if select {
		commandeffects[?string_lower(selectedunit.commands[menu.y])]();
	}
	if back {
		
	}
}

function st_commanddraw() {
	var i;
	for (i=0; i<array_length(selectedunit.commands); i++) {
		draw_set_color(c_grey);
		draw_rectangle(x+global.tilesize, y+i*global.tilesize*2, x+global.tilesize*8, y+(i+1)*global.tilesize*2, false);
		draw_set_color(c_black);
		draw_text(x+global.tilesize+global.tilesize/6, y+i*global.tilesize*2+global.tilesize/6, selectedunit.commands[i]);
	}
	draw_set_color(c_blue);
	draw_text(x, y+menu.y*global.tilesize*2, "->");
}
