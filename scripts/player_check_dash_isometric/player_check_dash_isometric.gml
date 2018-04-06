var player = argument0; 

with ( player ) { 
	if ( state == PLAYER_MOVE and b_button_pressed or x_button_pressed ) { 
		state = PLAYER_DASH; 
		var len = PLAYER_DASH_SPEED * PLAYER_DASH_DURATION; 
		dash_horizontal_speed = lengthdir_x( len, player_direction ) / PLAYER_DASH_DURATION; 
		dash_vertical_speed = 2 * ( lengthdir_y( len, player_direction ) / PLAYER_DASH_DURATION ) / 3; // dampen for isometric
		alarm[0] = PLAYER_DASH_DURATION;
		// player_create_dash_ghost( id );
	} else if ( state == PLAYER_DASH ) {
		if ( player_direction < 179 and player_direction > 1 ) {
			effect_create_above( ef_smoke, x, y, 0, c_white );
		} else {
			effect_create_below( ef_smoke, x, y, 0, c_white );
		}
		// image_blend = make_colour_rgb( 50, 200, 250);
		// player_create_dash_ghost( id );	
	}
} 
