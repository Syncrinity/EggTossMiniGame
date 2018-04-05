/// @description initialize variables

// player movement variables
horizontal_speed = 0; 
vertical_speed = 0; 
dash_horizontal_speed = 0;
dash_vertical_speed = 0;
move_speed = PLAYER_MOVE_SPEED; 

// gameplay variables
egg_list = ds_list_create();
player_direction = 0; 
state = PLAYER_MOVE;

// controller variables
left_stick_horizontal = 0; 
left_stick_vertical = 0; 
right_stick_horizontal = 0; 
right_stick_vertical = 0; 
a_button_pressed = false; 
b_button_pressed = false; 
x_button_pressed = false; 
y_button_pressed = false; 
left_trigger_pressed = false; 
left_bumper_pressed = false; 
right_trigger_pressed = false; 
right_bumper_pressed = false; 
start_button_pressed = false; 
select_button_pressed = false; 

controller_number = NO_CONTROLLER;

// draw_set_color( c_black );
// rectangle = instance_create_depth( x + 15, y, 0, aiming_rectangle );
