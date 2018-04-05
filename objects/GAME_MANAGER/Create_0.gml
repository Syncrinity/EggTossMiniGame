/// @description Insert description here
// You can write your code in this editor

var number_of_players = gamepad_get_device_count();
for (var i = 0; i < number_of_players; i++;)
{
    if ( gamepad_is_connected(i) ) {
        global.gp[i] = true; 
    } else { 
        global.gp[i] = false;
    }
}

// turn on player 1
// if ( global.gp[0] == true ) {
	var p_one = instance_create_depth( room_width / 2 - 64, room_height / 2, 0, player_one );
	with ( p_one ) {
		controller_number = 0;
		gamepad_set_axis_deadzone( controller_number, .30 ); 
	}
// }

// turn on player 2
// if ( global.gp[1] == true ) {
	var p_two = instance_create_depth( room_width / 2, room_height / 2 - 64, 0, player_two );
	with ( p_two ) {
		controller_number = 1;
		gamepad_set_axis_deadzone( controller_number, .30 ); 
	}
	
// }

// turn on player 3
if ( global.gp[2] == true ) {
	instance_create_depth( room_width / 2 + 64, room_height / 2, 0, player_three );
}

// turn on player 4
if ( global.gp[3] == true ) {
	instance_create_depth( room_width / 2, room_height / 2 + 64, 0, player_four );
}
