/// @description Insert description here
// You can write your code in this editor

// STATE == EGG_IDLE

if ( STATE == EGG_FOLLOW ) {
	egg_check_state_follow( id );
} else if ( STATE == EGG_THROWN ) {
	egg_check_state_thrown( id );
}
