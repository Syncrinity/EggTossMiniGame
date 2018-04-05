var player = argument0;

// vertical wall check
if ( place_meeting( player.x, player.y + player.vertical_speed, WALL )) {
	while( !place_meeting( player.x, player.y + sign( player.vertical_speed ), WALL )) {
		y += sign ( player.vertical_speed );
	}
	vertical_speed = 0;
}
