function c_generatemap2(map) {
	//global.map = array_create(sprite_get_width(sprite), array_create(sprite_get_height(sprite), {tiletype: TILES.EMPTY}));
	var i;
	var j;
	var bitches = file_text_open_read(map);
	var hoes;
	if bitches = -1 {
		log("die bitch!!!!!!!!!!!!!!!");
	}
	for (i=0; !file_text_eof(bitches); i++) {
		hoes = file_text_readln(bitches);
		for (j=0; j<string_length(hoes)-2; j++) {
			log(string(j) + ", " + string(i) + " is " + string(global.map[j][i].tiletype));
			//if global.map[j][i].tiletype = 2 {
			if true {
				switch string_char_at(hoes, j+1) {
					case "|":
						global.map[j][i].tiletype = TILES.SOLID;
						mycolours[j][i] = c_black;
						log(string(j) + ", " + string(i) + " is " + "full");
						break;
					default:
						global.map[j][i].tiletype = TILES.EMPTY;
						mycolours[j][i] = c_white;
						log(string(j) + ", " + string(i) + " is " + "empty");
						break;
				}
			}
			//global.map[i][j];
		}
	}
}