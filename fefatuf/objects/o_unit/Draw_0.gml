if waiting {
	draw_set_alpha(.4);
}
draw_sprite(sprite, 0, pos.x*global.tilesize+global.tilesize/2, pos.y*global.tilesize+global.tilesize/2);
draw_set_alpha(1);