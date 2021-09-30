if !mademap {
	log(draw_getpixel(99, 99));
	//c_generatemap(s_hellish);
	//c_generatemap2("map1.txt");
	mademap = true;
}

for (i=0; i<array_length(global.map); i++) {
	for (j=0; j<array_length(global.map[i]); j++) {
		//draw_set_color(mycolours[i][j]);
		draw_set_colour(c_white);
		draw_rectangle(i*global.tilesize, j*global.tilesize, i*global.tilesize+global.tilesize, j*global.tilesize+global.tilesize, false);
		draw_set_colour(c_black);
		/*switch global.map[i][j].tiletype {
			case TILES.EMPTY:
				draw_point_color(i, j, c_white);
				log("drawempty");
				break;
			case TILES.SOLID:
				draw_point_color(i, j, c_black);
				break;
		}*/
		//global.map[i][j];
	}
}