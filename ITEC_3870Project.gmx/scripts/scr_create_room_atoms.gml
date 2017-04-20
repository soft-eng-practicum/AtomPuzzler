/// scr_create_room_atoms("room name", ds_list)
// Uses scr_get_array_of_atom in Objects/Room/init_room_properties
/*
    Takes in an list of atoms and puts them into a room
    Create instances of atom objects and fill them inside a room
*/

var rm_name = argument[0];  //room name (String)
var list = argument[1];    //array of atom objects

switch(rm_name)
{
    case "rm1": //  3
        instance_create(188, 324, ds_list_find_value(list, 0) );
        instance_create(284, 296, ds_list_find_value(list, 1) );
        instance_create(380, 324, ds_list_find_value(list, 2) );
        instance_create(284, 420, ds_list_find_value(list, 3) );
        break;
    case "rm2": //  3
        instance_create(200, 324, ds_list_find_value(list, 0) );
        instance_create(480, 300, ds_list_find_value(list, 1) );
        instance_create(208, 84, ds_list_find_value(list, 2) );
        instance_create(264, 84, ds_list_find_value(list, 3) );
        break;
    case "rm3": //  4
        instance_create(88, 120, ds_list_find_value(list, 0) );
        instance_create(616, 192, ds_list_find_value(list, 1) );
        instance_create(504, 312, ds_list_find_value(list, 2) );
        instance_create(24, 240, ds_list_find_value(list, 3) );
        instance_create(372, 328, ds_list_find_value(list, 4) );
        break;
    case "rm4": //  4
        instance_create(328, 88, ds_list_find_value(list, 0) );
        instance_create(600, 112, ds_list_find_value(list, 1) );
        instance_create(512, 216, ds_list_find_value(list, 2) );
        instance_create(560, 400, ds_list_find_value(list, 3) );
        instance_create(224, 320, ds_list_find_value(list, 4) );
        break;
    case "rm5": //  3
        instance_create(32, 40, ds_list_find_value(list, 0) );
        instance_create(368, 64, ds_list_find_value(list, 1) );
        instance_create(320, 400, ds_list_find_value(list, 2) );
        instance_create(352, 296, ds_list_find_value(list, 3) );
        break;
    case "rm6": //  4
        instance_create(32, 184, ds_list_find_value(list, 0) );
        instance_create(176, 192, ds_list_find_value(list, 1) );
        instance_create(408, 368, ds_list_find_value(list, 2) );
        instance_create(600, 288, ds_list_find_value(list, 3) );
        instance_create(296, 84, ds_list_find_value(list, 4) );
        break;
    case "rm7": // 4
        instance_create(56, 72, ds_list_find_value(list, 0) );
        instance_create(120, 264, ds_list_find_value(list, 1) );
        instance_create(212, 416, ds_list_find_value(list, 2) );
        instance_create(312, 280, ds_list_find_value(list, 3) );
        instance_create(392, 112, ds_list_find_value(list, 4) );
        instance_create(600, 40, ds_list_find_value(list, 5) );
        instance_create(616, 360, ds_list_find_value(list, 6) );
        break;
    case "rm8": //  4
        instance_create(56, 56, ds_list_find_value(list, 0) );
        instance_create(136, 280, ds_list_find_value(list, 1) );
        instance_create(248, 144, ds_list_find_value(list, 2) );
        instance_create(312, 280, ds_list_find_value(list, 3) );
        instance_create(424, 424, ds_list_find_value(list, 4) );
        instance_create(600, 40, ds_list_find_value(list, 5) );
        instance_create(600, 152, ds_list_find_value(list, 6) );
        break;
    case "rm9": //  5
        break;
    case "rm10": // 5
        break;
    case "rm11":
        break;
    case "rm12":
        break;
    case "rm13":
        break;
    case "rm14":
        break;
    case "rm15":
        break;
    
    default:
        break;
}
