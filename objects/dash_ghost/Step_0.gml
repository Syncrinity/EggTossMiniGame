/// @description Insert description here
// You can write your code in this editor

image_alpha -= .015;
if ( image_alpha <= 0 ) {
	alarm[0] = 1;
}

/* if ( distance_to_point( follow_reference.x, follow_reference.y ) > 8 ) {
	move_towards_point( follow_reference.x, follow_reference.y, PLAYER_DASH_SPEED - 2 );
}
*/
