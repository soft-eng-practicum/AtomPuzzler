///scr_get_array_of_atoms(array)
// Uses scr_get_atom(String symbol)
/*
    Adds objects to an array
    
    @return array of atom objects
*/

var array = argument[0];
var array_size = array_length_1d(array);

for(i = 0; i < array_size; i++)
{
    new_array[i] = scr_get_atom(scr_get_solution(array));
    show_debug_message("scr_get_array_of_atoms: Add: " + string(new_array[i].symbol));
}

return new_array;
