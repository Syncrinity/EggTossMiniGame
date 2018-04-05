/// @description Insert description here
// You can write your code in this editor

// if ( !GAME_MANAGER.paused ) {
	player_get_input( id ); // Check Controller Inputs
	player_check_egg_throw( id ); // ( A button )
	player_check_egg_collision( id ); 
	player_check_aim_trigger( id ); // ( R Trigger )
	player_check_dash( id );
	player_update_horizontal( id ); 
	player_update_vertical( id ); 
	player_update_direction( id ); 
	
	// DEBUG 
	if ( select_button_pressed ) { // restart room
		room_restart();	
	}
// }
