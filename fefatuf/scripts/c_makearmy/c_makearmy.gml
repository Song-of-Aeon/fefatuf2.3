function c_makearmy(army, xpositions, ypositions) {
	var i;
	for (i=0; i<array_length(army); i++) {
		c_makeunit(army[i], xpositions[i], ypositions[i]);
	}
}
