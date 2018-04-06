var player = argument0;

if ( state == PLAYER_MOVE ) {
	vertical_speed = left_stick_vertical * move_speed;
} else if ( state == PLAYER_DASH ) {
	vertical_speed = dash_vertical_speed;
}

x += -2 * vertical_speed / 3;
y += vertical_speed / 3;
