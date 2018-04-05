var player = argument0; 

with ( player ) { 
	if ( state == PLAYER_MOVE and b_button_pressed or x_button_pressed ) { 
		state = PLAYER_DASH; 
		var len = PLAYER_DASH_SPEED * PLAYER_DASH_DURATION; 
		dash_horizontal_speed = lengthdir_x( len, player_direction ) / PLAYER_DASH_DURATION; 
		dash_vertical_speed = lengthdir_y( len, player_direction ) / PLAYER_DASH_DURATION; 
		alarm[0] = PLAYER_DASH_DURATION;
		// player_create_dash_ghost( id );
	} else if ( state == PLAYER_DASH ) {
		effect_create_above( ef_smoke, x, y, 0, c_white );
		// player_create_dash_ghost( id );	
	}
} 
