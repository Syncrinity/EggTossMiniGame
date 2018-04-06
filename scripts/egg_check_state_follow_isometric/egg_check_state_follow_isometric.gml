var egg = argument0;

with ( egg ) {
	if ( player_reference != NO_PLAYER ) {
		var egg_list = player_reference.egg_list;

		// next egg to be tossed, follow the player
		if ( egg_position == 0 ) { 
			if ( distance_to_point ( player_reference.x, player_reference.y ) > 24 ) {
			move_towards_point( player_reference.x, player_reference.y, move_speed );
			} else {
				move_towards_point( x, y, 0 );
			}
		// not next egg to be tossed, follow the next egg in line
		} else {
			if ( distance_to_point ( head_reference.x, head_reference.y ) > 16 ) {
				move_towards_point( head_reference.x, head_reference.y, move_speed );
			} else {
				move_towards_point( x, y, 0 );
			}	
		}
	}
}
		/*
		else if ( ds_list_find_value( egg_list, egg_position - 1 ) != undefined ) {
			var previous_egg = ds_list_find_value ( egg_list, egg_position - 1 )
				
			if ( distance_to_point ( previous_egg.x, previous_egg.y ) > 24 ) {
				move_towards_point( previous_egg.x, previous_egg.y, move_speed );
			} else {
				move_towards_point( x, y, 0 );
			}	
		}
	}
}
*/