draw_sprite(s_cursor, 0, pos.x*global.tilesize+global.tilesize/2, pos.y*global.tilesize+global.tilesize/2);

if selectedunit {
	var i;
	var j;
	var range = selectedunit.mov;
	var myx = (selectedunit.pos.x*global.tilesize);
	var myy = (selectedunit.pos.y*global.tilesize);
	draw_set_colour(c_aqua);
	draw_set_alpha(0.3);
	for (i=-range; i<range+1; i++) {
		for (j=-range; j<range+1; j++) {
			if abs(i) + abs(j) <= range {
				draw_rectangle(i*global.tilesize+myx, j*global.tilesize+myy, i*global.tilesize+global.tilesize+myx, j*global.tilesize+global.tilesize+myy, false);
			}
		}
	}
	draw_set_alpha(1);
	draw_set_colour(c_black);
	
}