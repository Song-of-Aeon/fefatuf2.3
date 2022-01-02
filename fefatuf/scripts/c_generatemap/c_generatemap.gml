function c_generatemap(sprite) {
	//global.map = array_create(sprite_get_width(sprite), array_create(sprite_get_height(sprite), {tiletype: TILES.EMPTY, units: array_create(2)}));
	var i;
	var j;
	var bitches = surface_create(sprite_get_width(sprite), sprite_get_height(sprite));
	surface_set_target(bitches);
	draw_sprite(sprite, 0, sprite_get_width(sprite)/2, sprite_get_height(sprite)/2);
	for (i=0; i<sprite_get_width(sprite); i++) {
		for (j=0; j<sprite_get_height(sprite); j++) {
			///log(surface_getpixel_ext(bitches,i, j));
			switch surface_getpixel(bitches, i, j) {
				case 0:
					//log("yeah");
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