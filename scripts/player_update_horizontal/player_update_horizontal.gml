var player = argument0;

// horizontal_speed = 0;
if ( state == PLAYER_MOVE ) { 
	horizontal_speed = left_stick_horizontal * move_speed;
} else if ( state == PLAYER_DASH ) {
	horizontal_speed = dash_horizontal_speed;
}
// player_check_wall_collision_horizontal( id );

x += horizontal_speed;
// rectangle.x += horizontal_speed + 15;
