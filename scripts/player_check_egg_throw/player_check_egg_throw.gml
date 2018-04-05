var player = argument0

with ( player ) {
	if ( a_button_pressed ) {
		// player has an egg
		if ( ds_list_size( egg_list ) > 0 ) {
			// throw the egg and remove it from the player's inventory
			var current_egg = ds_list_find_value( egg_list, 0 );
			if ( state == PLAYER_MOVE ) {
				egg_initiate_throw( current_egg );
			} else if ( state == PLAYER_DASH )  {
				egg_initiate_throw_dash( current_egg );	
			}
		
			// remove egg from egg list
			ds_list_delete( egg_list, 0 );
			player_update_list( egg_list )
		}
	}
}
