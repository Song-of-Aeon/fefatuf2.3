function c_attack(offense, defense) {
	var effdamage = offense.str-defense.defense;
	var donefighting = false;
	while !donefighting {
		defense.hp -= effdamage;
		donefighting = true;
	}
}