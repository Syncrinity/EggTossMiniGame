var egg = argument0;
// horizontal speed = the normalized horizontal * movespeed 
// vertical speed = the normalized vertical * movespeed 

with ( egg ) {
// horizontal checks 	
	// check if egg is colliding with another player
	var nearest_player = instance_nearest( x + horizontal_speed, y, PLAYER );
	
	if ( STATE == EGG_THROWN ) {
		if ( nearest_player != player_reference ) {
			if ( place_meeting( x + horizontal_speed, y, nearest_player )) {
				while ( !place_meeting( x + sign( horizontal_speed ), y, nearest_player )) {
					x += sign ( horizontal_speed );
				}
				horizontal_speed = 0;
				vertical_speed = 0;
				effect_create_above( ef_ring, x, y, 0, c_blue )
				// function for this 
				STATE = EGG_IDLE;
				player_reference = NO_PLAYER;
				alarm[0] = -1;
				
				// delete egg
				// instance_destroy();
			}
		}
	}
	
	// check if egg is colliding with a wall 
	if ( STATE == EGG_THROWN ) {
		if ( place_meeting( x + horizontal_speed, y, WALL )) {
			var nearest_wall = instance_nearest( x + horizontal_speed, y, WALL );
			while ( !place_meeting( x + sign( horizontal_speed ), y, nearest_wall )) {
				x += sign ( horizontal_speed );
			}
			horizontal_speed *= -1;
			// horizontal_speed *= -1.2;
			// egg_direction *= -1;
			// show_message("hit wall! horizontal")
		}
	
		// update egg horizontal movement
		x += horizontal_speed;
	}

// vertical checks 
	// check if egg is colliding with another player
	if ( STATE == EGG_THROWN ) {
			// bug where both players in the same spot will cause projectile to miss )
			// need to move self away during check if they're the nearest player 
		if ( nearest_player != player_reference ) {
			if ( place_meeting( x, y + vertical_speed, nearest_player )) {
				while ( !place_meeting( x, y + sign( vertical_speed ), nearest_player )) {
					y += sign ( vertical_speed );
				}
				horizontal_speed = 0;
				vertical_speed = 0;
				effect_create_above( ef_ring, x, y, 0, c_red )
				
				// deal damage to receiving player 
				
				// function for this 
				STATE = EGG_IDLE;
				player_reference = NO_PLAYER;
				alarm[0] = -1;
				
				// delete egg
				// instance_destroy();
			}
		}
	}
	
	if ( STATE == EGG_THROWN ) {
		// check if egg is colliding with wall
		if ( place_meeting( x, y + vertical_speed, WALL )) {
			var nearest_wall = instance_nearest( x, y + vertical_speed, WALL );
			while ( !place_meeting( x, y + sign( vertical_speed ), nearest_wall )) {
				y += sign ( vertical_speed );
			}
			vertical_speed *= -1;
			// vertical_speed *= -1.2;
			// egg_direction *= -1;
			// show_message("hit wall! horizontal")
		}	
	
		// update egg vertical movement
		y += vertical_speed;
	}
}
