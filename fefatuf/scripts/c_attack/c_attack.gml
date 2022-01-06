function c_attack(offense, defense, damagecalc=offense.inventory[0].dmgcalc) {
	var effdamage = damagecalc(offense, defense);
	//var donefighting = false;
	//while !donefighting {
		defense.hp -= effdamage;
		//donefighting = true;
	//}
}

global.dmgcalc = {
	physical: munction(function(offense, defense) {
		return max(offense.str-defense.def, 0);
	}),
	magical: munction(function(offense, defense) {
		return max(offense.mag-defense.res, 0);
	}),
	
}

function c_combat(offense, defense, continueconditions=[global.spdcompare]) {
	var combats = 2;
	var mediator;
	var i;
	for (i=0; i<array_length(continueconditions); i++) {
		combats += continueconditions[i](offense, defense);
	}
	while combats {
		c_attack(offense, defense);
		mediator = offense;
		offense = defense;
		defense = mediator;
		combats--;
	}
}

/*global.spdcompare = {
	
}*/

global.spdcompare = function(offense, defense) {
	log(offense, offense.object_index);
	log(defense, defense.object_index);
	return offense.spd-defense.spd >= 5;
}