var player = argument0;
var player_x = player.x + player.horizontal_speed;
var player_y = player.y + player.vertical_speed;

// check horizontal collision 
var closest_egg = instance_nearest( player_x, player_y, EGG )
// there's a chance when all the eggs are on top of each other that the nearest egg is already in someone's
// pile. So all the eggs should be checked until their state is EGG_IDLE

if ( place_meeting( player_x, player_y, closest_egg )) {
	// if closest egg isn't already in a list
	if ( closest_egg.STATE == EGG_IDLE && closest_egg.player_reference == NO_PLAYER ) {
		// ds_list_add( player.egg_list, closest_egg );
	
		with ( closest_egg ) {
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
			closest_egg.head_reference = ds_list_find_value( player.egg_list, closest_egg.egg_position - 1 );
		}
		
		ds_list_add( player.egg_list, closest_egg );
	}
}
