function c_generatemap(sprite) {
	global.map = array_create(sprite_get_width(sprite), array_create(sprite_get_height(sprite), {tiletype: TILES.EMPTY}));
	var i;
	var j;
	var bitches = surface_create(sprite_get_width(sprite), sprite_get_height(sprite));
	surface_set_target(bitches);
	draw_sprite(sprite, 0, 0, 0);
	for (i=0; i<sprite_get_width(sprite); i++) {
		for (j=0; j<sprite_get_width(sprite); j++) {
			switch draw_getpixel_ext(i, j) {
				case 000000:
					global.map[i][j].tiletype = TILES.SOLID;
					break;
				default:
					global.map[i][j].tiletype = TILES.EMPTY;
					break;
			}
			//global.map[i][j];
		}
	}
	surface_reset_target();
}