mademap = false;
global.tilesize = 16;

enum TILES {
	EMPTY,
	SOLID,
	HEAL,
	HURT,
	FOREST
}

global.map = array_create(10, array_create(10, {tiletype: TILES.EMPTY}));