var egg = argument0;
		
with ( egg ) {
	alarm[0] = EGG_THROW_DURATION;
	x = player_reference.x;
	y = player_reference.y;
	egg_direction = player_reference.player_direction;
	egg_position = NO_POSITION;
	STATE = EGG_THROWN;
	move_towards_point( x, y, 0 ); // cancel any follow momentum
	var len = ( egg_speed * 1.6 ) * EGG_THROW_DURATION;
	var len_vertical = ( 2 * egg_speed / 3 ) * 1.6 * EGG_THROW_DURATION;
	horizontal_speed = lengthdir_x( len, egg_direction ) / EGG_THROW_DURATION;
	vertical_speed = ( lengthdir_y( len_vertical, egg_direction ) / EGG_THROW_DURATION );
}
