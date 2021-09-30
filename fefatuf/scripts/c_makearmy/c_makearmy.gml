function c_makeunit(army, xpositions, ypositions) {
	var i;
	for (i=0; i<array_length(army); i++) {
		c_makeunit(army[i], xpositions[i], ypositions[i]);
	}
}
