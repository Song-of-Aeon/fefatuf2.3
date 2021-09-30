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

global.map = array_create(64, array_create(64, {tiletype: TILES.NOTHING, units: array_create(2)}));
mycolours = array_create(64, array_create(64));
//c_generatemap2("map1.txt");