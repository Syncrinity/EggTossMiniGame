/// @description Insert description here
// You can write your code in this editor

player_get_input( id );
player_check_egg_throw_isometric( id );
player_check_egg_collision( id );
player_check_dash_isometric( id );
player_update_horizontal( id );
player_update_vertical( id );
// player_update_horizontal_isometric( id );
// player_update_vertical_isometric( id );

var threshold = CONTROLLER_DEADZONE - .08; // - .10;

if ( !( left_stick_horizontal == 0 and left_stick_vertical == 0 )) {
	image_speed = 1;
// moving down left
	if ( left_stick_vertical > threshold - .10 and left_stick_horizontal < -threshold + .10 ) {
		// sprite_index = s_isometric_player;	
		image_index = 4;
		depth = -2;
// moving up left
	} else if ( left_stick_vertical < -threshold + .10 and left_stick_horizontal < -threshold + .10 ) {
		// sprite_index = s_isometric_player;	
		image_index = 6;
		depth = 2;
// moving up right
	} else if ( left_stick_vertical < -threshold + .10 and left_stick_horizontal > threshold - .10 ) {
		// sprite_index = s_isometric_player;	
		image_index = 7;
		depth = 2;
// moving down right
	} else if ( left_stick_vertical > threshold - .10 and left_stick_horizontal > threshold - .10 ) {
		// sprite_index = s_isometric_player;	
		image_index = 5;
		depth = -2;
// moving up
	} if ( left_stick_horizontal > -threshold and left_stick_horizontal < threshold and left_stick_vertical < -threshold ) { 
		// sprite_index = s_isometric_player_up;
		// sprite_index = s_isometric_player_up_down;
		image_index = 2;
		depth = 2;
// moving down
	} else if ( left_stick_horizontal > -threshold and left_stick_horizontal < threshold and left_stick_vertical > threshold ) {
		// sprite_index = s_isometric_player_up;
		// sprite_index = s_isometric_player_up_down;
		image_index = 0;
		depth = -2;
// moving left
	} else if ( left_stick_vertical > -threshold and left_stick_vertical < threshold and left_stick_horizontal < -threshold ) {
		// sprite_index = s_isometric_player_up;
		// sprite_index = s_isometric_player_up_down;
		image_index = 1;
// moving right
	} else if ( left_stick_vertical > -threshold and left_stick_vertical < threshold and left_stick_horizontal > threshold ) {
		// sprite_index = s_isometric_player_up;
		// sprite_index = s_isometric_player_up_down;
		image_index = 3;
	}
	player_update_direction_isometric( id );
	image_speed = 0;
}

// DEBUG 
if ( select_button_pressed ) { // restart room
	room_restart();	
}
