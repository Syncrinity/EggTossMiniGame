// update egg positions
var egg_list = argument0;

for ( i = 0; i < ds_list_size( egg_list ); i++ ) {
	var index = i;
	with ( ds_list_find_value ( egg_list, i )) {
		egg_position = index;
		if ( index == 0 ) {
			head_reference = EGG_HEAD;
		}
	}
}

