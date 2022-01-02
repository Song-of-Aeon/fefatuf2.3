function rangegen(x, y, radius, blockedtiles=[TILES.SOLID]) {
	var k;
	var l;
	var set = [];
	for (k=-radius; k<radius+1; k++) {
		for (l=-radius; l<radius+1; l++) {
			if x+k >= 0 && y+l >= 0 && x+k < array_length(global.map) {
				if  y+l < array_length(global.map[x+k]) {
					if abs(k) + abs(l) <= radius && !array_contains(blockedtiles, global.map[x+k][y+l].tiletype) {
						log("onmake" + string(k) + string(l))
						array_push(set, global.map[x+k][y+l]);
						//draw_rectangle(i*global.tilesize+myx, j*global.tilesize+myy, i*global.tilesize+global.tilesize+myx, j*global.tilesize+global.tilesize+myy, false);
					}
				}
			}
		}
	}
	return set;
}