if !mademap {
	log("lol");
	c_generatemap(s_hellish);
	//c_generatemap2("map1.txt");
	mademap = true;
}

for (i=0; i<array_length(global.map); i++) {
	for (j=0; j<array_length(global.map[i]); j++) {
		//draw_set_color(mycolours[i][j]);
		
		
		
		switch global.map[i][j].tiletype {
			case TILES.EMPTY:
				//draw_point_color(i, j, c_white);
				draw_set_colour(c_white);
				//log("drawempty");
				break;
			default:
				//draw_point_color(i, j, c_black);
				draw_set_colour(c_black);
				break;
		}
		var wide = global.tilesize;
		draw_rectangle(i*wide, j*wide, (i*wide)+wide, (j*wide)+wide, false);
		//global.map[i][j];
	}
}