///@function instance_create(x, y, object, [layer, depth]);

function instance_create(x, y, object, layer_="Instances", depth_=0) {
	var chump = instance_create_layer(x, y, layer_, object);
	chump.depth = depth_;
	return chump;
}