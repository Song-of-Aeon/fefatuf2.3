drawstate();
draw_sprite(s_cursor, turn, pos.x*global.tilesize+global.tilesize/2, pos.y*global.tilesize+global.tilesize/2);
draw_set_color(c_white);
draw_line(400, 100, 400, 100+cos(global.count/60)*100);
if selectedunit != 0 {
	var whatever = variable_struct_get_names(selectedunit.defstats);
	var i;
	for (i=0; i<array_length(whatever); i++) {
		draw_text(270, 50+i*20, whatever[i] + ": " + string(variable_instance_get(selectedunit, whatever[i])))
	}
	i++;
	draw_text_ext(270, 50+i*20, string(selectedunit.inventory), 20, 200);
}