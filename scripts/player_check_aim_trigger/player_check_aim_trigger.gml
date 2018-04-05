var player = argument0;

if ( player.right_trigger_pressed ) {
	player.rectangle.visible = true;
	player.rectangle.direction = player_direction;
}

