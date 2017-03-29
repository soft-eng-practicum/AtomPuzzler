///scr_get_array_of_atoms(array)
// Uses scr_get_atom(String symbol)
/*
    Adds objects to an array
    
    @return array of atom objects
*/

var array = argument[0];
var array_size = array_length_1d(array);

/* DEBUG
show_debug_message("scr_get_array_of_atoms: array contents");

for(i = 0; i < array_size; i++)
{
    show_debug_message("array[" + string(i) + "]: " + array[i]);
}

show_debug_message("scr_get_array_of_atoms: Before Loop Size: " + string(array_size));
*/

for(i = 0; i < array_size; i++)
{
    new_array[i] = scr_get_atom(array[i]);
    
    show_debug_message("scr_get_array_of_atoms: Add Object: " + string(new_array[i].symbol));
}

show_debug_message("Room name: " + string(room_get_name(rm1)));


return new_array;
