///scr_array_to_list(array, list)
/*
    Takes given array of strings and adds it to the list
*/

var array = argument[0];
var list = argument[1];
var debug_string = "";

for(i = 0; i < array_length_1d(array); i++) {
    debug_string += string(array[i]);
    ds_list_add(list, array[i]);
}

show_debug_message("scr_array_to_list: Final List: " + debug_string);
