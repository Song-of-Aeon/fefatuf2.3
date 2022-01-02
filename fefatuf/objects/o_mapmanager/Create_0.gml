mademap = false;
global.tilesize = 16;

enum TILES {
	EMPTY,
	SOLID,
	NOTHING,
	HEAL,
	HURT,
	FOREST
}
global.map = [];
var i;
var j;
for (i=0; i<64; i++) {
	for (j=0; j<64; j++) {
		global.map[i][j] = new tile(i, j);
	}
}

//global.map = array_create(64, array_create(64, {tiletype: TILES.NOTHING, units: array_create(2)}));
mycolours = array_create(64, array_create(64));
//c_generatemap2("map1.txt");