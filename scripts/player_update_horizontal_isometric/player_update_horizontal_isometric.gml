var player = argument0;

if ( state == PLAYER_MOVE ) { 
	horizontal_speed = left_stick_horizontal * move_speed;
} else if ( state == PLAYER_DASH ) {
	horizontal_speed = dash_horizontal_speed;
}

x += horizontal_speed;
y += horizontal_speed / 2;