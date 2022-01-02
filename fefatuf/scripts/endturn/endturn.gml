function endturn(alignment) {
	/*with_array(army[alignment], function() {
		waiting = false;
	});*/
	var i;
	for (i=0; i<array_length(army[alignment]); i++) {
		army[alignment][i].waiting = false;
	}
	turn = loop_range(turn+1, 0, array_length(army));
}
function startturn(army) {
	/*with_array(army, function() {
		waiting = false;
	});*/
}