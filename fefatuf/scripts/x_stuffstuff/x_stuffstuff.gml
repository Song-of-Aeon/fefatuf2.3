enum STUFF {
	NULL,
	#region weapons
	SWORD,
	AXE,
	LANCE,
	#endregion
	#region items
	VULNERARY,
	#endregion
	#region size
	SIZE
	#endregion
}

enum STUFFTYPE {
	NULL,
	ANY,
	NONE,
	SWORD,
	AXE,
	LANCE,
	PRF
}

global.x_stuffmanager = { //yeah i totally just stole this from market bread man im sorry
	ReferenceStuffList: array_create(STUFF.SIZE),
	BindStuff: function(stuff, index) {
		ReferenceStuffList[index] = stuff;
	},
}

function c_getstuffbyid(index) {
	var stuff = global.x_stuffmanager.ReferenceStuffList[index];
	if !stuff {
		log("item index " + string(index) + " isnt bound! make sure to bind that shit!"); 
		return global.x_stuffmanager.ReferenceStuffList[STUFF.NULL];
	}
	return stuff;
}
function c_getidbystuff(stuff) {
	for (var i=0; i<STUFF.SIZE; i++) {
		if(c_getstuffbyid(i) == stuff) return i;
	}
}