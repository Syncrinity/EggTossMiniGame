// player_get_input

var player = argument0 
var controller_number = player.controller_number

// analog stick inputs
player.left_stick_horizontal = gamepad_axis_value( controller_number, gp_axislh )
player.right_stick_horizontal = gamepad_axis_value( controller_number, gp_axisrh )
player.left_stick_vertical = gamepad_axis_value( controller_number, gp_axislv )
player.right_stick_vertical = gamepad_axis_value( controller_number, gp_axisrv )

// button inputs
player.a_button_pressed = gamepad_button_check_pressed( controller_number, gp_face1 )
player.b_button_pressed = gamepad_button_check_pressed( controller_number, gp_face2 )
player.x_button_pressed = gamepad_button_check_pressed( controller_number, gp_face3 )
// player.y_button_pressed = gamepad_button_check_pressed( controller_number, gp_face4 )
// player.start_button_pressed = gamepad_button_check_pressed( controller_number, gp_start )
player.select_button_pressed = gamepad_button_check_pressed( controller_number, gp_select )

// trigger and bumper inputs
// player.left_trigger_pressed = gamepad_button_check_pressed( controller_number, gp_shoulderl )
// player.left_bumper_pressed = gamepad_button_check_pressed( controller_number, gp_shoulderlb )
// player.right_trigger_pressed = gamepad_button_check_pressed( controller_number, gp_shoulderr )
// player.right_bumper_pressed = gamepad_button_check_pressed( controller_number, gp_shoulderb )

