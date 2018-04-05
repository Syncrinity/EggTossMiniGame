var player = argument0;
var player_x = player.x + player.horizontal_speed;
var player_y = player.y + player.vertical_speed;


// might be more efficient if there was a list of eggs in EGG_IDLE state

for ( i = instance_number( EGG ); i >= 0; i-- ) {
	var current_egg = instance_find( EGG, i );

	if ( place_meeting( player_x, player_y, current_egg )) {
		// if closest egg isn't already in a list
		if ( current_egg.STATE == EGG_IDLE && current_egg.player_reference == NO_PLAYER ) {
			with ( current_egg ) {
				player_reference = player;
				// egg_position = ds_list_size( player_reference.egg_list ) - 1;
				egg_position = ds_list_size( player_reference.egg_list );
				STATE = EGG_FOLLOW;
			}
		
			// set egg to head if it's the first in the list
			if ( ds_list_size( player.egg_list ) == 0 ) {
				head_reference = EGG_HEAD;
			} else if ( ds_list_size( player.egg_list ) > 0 ) {
			// attach to previous egg if there's more than 1 egg
				current_egg.head_reference = ds_list_find_value( player.egg_list, current_egg.egg_position - 1 );
			}
		
			ds_list_add( player.egg_list, current_egg );
		}
	}		
}
