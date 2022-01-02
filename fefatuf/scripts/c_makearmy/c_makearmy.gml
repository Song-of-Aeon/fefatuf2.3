function c_makearmy(army, xpositions, ypositions, alignment) {
	var guys = [];
	var i;
	for (i=0; i<array_length(army); i++) {
		var guy = c_makeunit(army[i], xpositions[i], ypositions[i]);
		guy.alignment = alignment;
		guys[i] = guy;
	}
	return guys;
}
