drawstate();
draw_sprite(s_cursor, turn, pos.x*global.tilesize+global.tilesize/2, pos.y*global.tilesize+global.tilesize/2);
draw_set_color(c_white);
draw_line(400, 100, 400, 100+cos(global.count/60)*100);