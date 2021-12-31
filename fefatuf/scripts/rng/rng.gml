function rng(rolls=1) {
	var num = 0;
	var i;
	if rolls != floor(rolls) {
		if reng < (rolls%1)*100 {
			rolls = floor(rolls);
			for (i=1; i<rolls; i++) {
				num += reng;
				var reng = irandom(99);
			}
			num = floor(num/rolls);
		} else {
			num = reng;
		}
	} else {
		for (i=0; i<rolls; i++) {
			num += irandom(99);
		}
		num = floor(num/rolls);
	}
	return num;
}