function c_attack(offense, defense, damagecalc=offense.inventory[0].dmgcalc) {
	var effdamage = damagecalc(offense, defense);
	var donefighting = false;
	while !donefighting {
		defense.hp -= effdamage;
		donefighting = true;
	}
}

global.dmgcalc = {
	physical: munction(function(offense, defense) {
		return offense.str-defense.def;
	}),
	magical: munction(function(offense, defense) {
		return offense.mag-defense.res;
	}),
	
}