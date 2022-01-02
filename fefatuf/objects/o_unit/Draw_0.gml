if waiting {
	draw_set_alpha(.4);
}
switch alignment {
	case 0:
		col = c_blue;
		break;
	case 1:
		col = c_red;
		break;
	case 2:
		col = c_green;
		break;
	case 3:
		col = c_yellow;
		break;
	default:
		col = c_purple;
		break;
}
draw_sprite_ext(sprite.idle, 0, pos.x*global.tilesize+global.tilesize/2, pos.y*global.tilesize+global.tilesize/2, 1, 1, 0, col, draw_get_alpha());
draw_set_alpha(1);