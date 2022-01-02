function with_array(objects, function_) {
	var j;
	for (j=0; j<array_length(objects); j++) {
		with objects[j] function_();
		//with objects[j] if !function_() exit;
		//if !method(objects[j], function_)() break;
	}
	return j<array_length(objects);
}