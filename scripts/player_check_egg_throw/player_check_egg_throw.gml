var player = argument0

if ( player.a_button_pressed ) {
	// player has an egg
	if ( ds_list_size( player.egg_list ) > 0 ) {
		// throw the egg and remove it from the player's inventory
		var current_egg = ds_list_find_value( player.egg_list, 0 );
		egg_initiate_throw( current_egg );
		
		// remove egg from egg list
		ds_list_delete( player.egg_list, 0 );
		player_update_list( player.egg_list )
	}
}

