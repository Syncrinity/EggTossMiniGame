var player = argument0;

// if player moved this frame, update direction
if ( horizontal_speed != 0 || vertical_speed != 0 ) {
	player_direction = point_direction(x, y, x + horizontal_speed, y + vertical_speed )
	// image_angle = player_direction;
	// rectangle.image_angle = player_direction;
}
