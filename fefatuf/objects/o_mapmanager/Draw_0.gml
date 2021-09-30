if !mademap {
	log(draw_getpixel(99, 99));
	c_generatemap(s_hellish);
	mademap = true;
}

for (i=0; i<array_length(global.map); i++) {
		for (j=0; j<array_length(global.map[i]); j++) {
			switch global.map[i][j].tiletype {
				case TILES.EMPTY:
					draw_point_color(i, j, c_white);
					break;
				case TILES.SOLID:
					draw_point_color(i, j, c_black);
					break;
			}
			//global.map[i][j];
		}
	}