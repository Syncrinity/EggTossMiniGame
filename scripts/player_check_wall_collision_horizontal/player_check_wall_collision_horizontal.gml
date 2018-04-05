var player = argument0;

// horizontal wall check
if ( place_meeting( player.x + player.horizontal_speed, player.y, WALL )) {
	while( !place_meeting( player.x + sign( player.horizontal_speed ), player.y, WALL )) {
		x += sign( player.horizontal_speed );
	}
	horizontal_speed = 0;
}
