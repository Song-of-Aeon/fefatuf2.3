function endunit(target) {
	target.waiting = true;
	var i;
	for (i=0; i<array_length(army[turn]); i++) {
		if !army[turn][i].waiting {break} else if i = array_length(army[turn])-1 {endturn(turn)};
	}
}