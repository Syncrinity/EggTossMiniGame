/// @description Insert description here
// You can write your code in this editor

// STATE == EGG_IDLE

if ( STATE == EGG_FOLLOW ) {
	// egg_check_state_follow( id );
	egg_check_state_follow_isometric( id );
} else if ( STATE == EGG_THROWN ) {
	egg_check_state_thrown( id );
	// instance_create_depth( x, y, 5, green_paint);
	effect_create_below( ef_flare, x, y, 0, egg_color );
	effect_create_below( ef_flare, x, y, 0, egg_color );
	effect_create_below( ef_flare, x, y, 0, egg_color );
	effect_create_below( ef_flare, x, y, 0, egg_color );
	effect_create_below( ef_flare, x, y, 0, egg_color );
}
