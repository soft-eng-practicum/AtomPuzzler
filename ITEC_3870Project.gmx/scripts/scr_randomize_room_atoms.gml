///scr_randomize_room_atoms(1D-array, "rm_name")
/*
    Purpose:
        To randomize the order of room atoms containing the correct and incorrect atom objects.
        
    Implementation:
        By using the Fisher-Yates shuffle algorithm.
    
    Reference:
        https://en.wikipedia.org/wiki/Fisher-Yates_shuffle
        
*/

var array = argument[0];
var rm_name = argument[1];
var list = ds_list_create();
var dice;

show_debug_message("scr_randomize_room_atoms: Room Name: " + string(rm_name));

switch(rm_name)
{
    case "rm1":
        array[3] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm2":
        array[3] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm3":
        array[3] = scr_get_random_atom();
        array[4] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm4":
        array[3] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm5":
        array[3] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    default:
        break;

}

ds_list_shuffle(list);

return list;
