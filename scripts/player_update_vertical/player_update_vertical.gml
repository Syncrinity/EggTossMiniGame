var player = argument0;

// vertical_speed = 0;
/*
if ( state == PLAYER_MOVE ) {
	vertical_speed = left_stick_vertical * move_speed;
} else if ( state == PLAYER_DASH ) {
	vertical_speed = dash_vertical_speed;
}

// player_check_wall_collision_vertical( id );

y += vertical_speed;
// rectangle.y += vertical_speed;
*/

// ISOMETRIC TEST
if ( state == PLAYER_MOVE ) {
	vertical_speed = left_stick_vertical * ( 2 * move_speed / 3 );
} else if ( state == PLAYER_DASH ) {
	vertical_speed = dash_vertical_speed;
}

y += vertical_speed;
