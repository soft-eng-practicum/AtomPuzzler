///scr_randomize_room_atoms(1D-array, "rm_name")
/*
    Purpose: Adds the leftover atoms(randomly generated) to original array
    
    Why: If rm5 contains 4 correct atoms, we need to generate additional atoms so the player can lose    
    
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
        array[4] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm4":
        array[4] = scr_get_random_atom();
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
    case "rm6":
        array[4] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm7":
        array[4] = scr_get_random_atom();
        array[5] = scr_get_random_atom();
        array[6] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm8":
        array[4] = scr_get_random_atom();
        array[5] = scr_get_random_atom();
        array[6] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm9":
        array[4] = scr_get_random_atom();
        array[5] = scr_get_random_atom();
        array[6] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm10":
        array[5] = scr_get_random_atom();
        array[6] = scr_get_random_atom();
        array[7] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm11":
        array[5] = scr_get_random_atom();
        array[6] = scr_get_random_atom();
        array[7] = scr_get_random_atom();
        array[8] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    
    case "rm12":
        array[5] = scr_get_random_atom();
        array[6] = scr_get_random_atom();
        array[7] = scr_get_random_atom();
        array[8] = scr_get_random_atom();
        array[9] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    
    case "rm13":
        array[6] = scr_get_random_atom();
        array[7] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm14":
        array[6] = scr_get_random_atom();
        array[7] = scr_get_random_atom();
        for(i = 0; i < array_length_1d(array); i++)
        {
            ds_list_add(list, array[i]);
        }
        break;
    case "rm15":
        array[6] = scr_get_random_atom();
        array[7] = scr_get_random_atom();
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
