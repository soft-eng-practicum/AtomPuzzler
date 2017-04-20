/// scr_create_room_atoms("room name", ds_list)
// Uses scr_get_array_of_atom in Objects/Room/init_room_properties
/*
    Takes in an list of atoms and puts them into a room
    Create instances of atom objects and fill them inside a room
*/

var rm_name = argument[0];  //room name (String)
var list = argument[1];    //ds_list of atom objects

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
        instance_create(56, 56, ds_list_find_value(list, 0) );
        instance_create(48, 152, ds_list_find_value(list, 1) );
        instance_create(288, 48, ds_list_find_value(list, 2) );
        instance_create(600, 40, ds_list_find_value(list, 3) );
        instance_create(600, 152, ds_list_find_value(list, 4) );
        instance_create(192, 424, ds_list_find_value(list, 5) );
        instance_create(424, 424, ds_list_find_value(list, 6) );
        break;
    case "rm10": // 5
        instance_create(72, 264, ds_list_find_value(list, 0) );
        instance_create(192, 424, ds_list_find_value(list, 1) );
        instance_create(336, 256, ds_list_find_value(list, 2) );
        instance_create(224, 136, ds_list_find_value(list, 3) );
        instance_create(592, 176, ds_list_find_value(list, 4) );
        instance_create(608, 312, ds_list_find_value(list, 5) );
        instance_create(616, 416, ds_list_find_value(list, 6) );
        instance_create(408, 64, ds_list_find_value(list, 7) );
        break;
    case "rm11": // 5
        instance_create(56, 40, ds_list_find_value(list, 0) );
        instance_create(216, 40, ds_list_find_value(list, 1) );
        instance_create(304, 40, ds_list_find_value(list, 2) );
        instance_create(512, 48, ds_list_find_value(list, 3) );
        instance_create(600, 80, ds_list_find_value(list, 4) );
        instance_create(80, 224, ds_list_find_value(list, 5) );
        instance_create(224, 248, ds_list_find_value(list, 6) );
        instance_create(336, 256, ds_list_find_value(list, 7) );
        instance_create(568, 352, ds_list_find_value(list, 8) );
        break;
    case "rm12": // 5
        instance_create(24, 200, ds_list_find_value(list, 0) );
        instance_create(80, 96, ds_list_find_value(list, 1) );
        instance_create(248, 160, ds_list_find_value(list, 2) );
        instance_create(224, 248, ds_list_find_value(list, 3) );
        instance_create(224, 384, ds_list_find_value(list, 4) );
        instance_create(408, 392, ds_list_find_value(list, 5) );
        instance_create(400, 248, ds_list_find_value(list, 6) );
        instance_create(488, 160, ds_list_find_value(list, 7) );
        instance_create(600, 80, ds_list_find_value(list, 8) );
        instance_create(616, 200, ds_list_find_value(list, 9) );
        break;
    case "rm13": // 6
        instance_create(80, 72, ds_list_find_value(list, 0) );
        instance_create(184, 184, ds_list_find_value(list, 1) );
        instance_create(120, 240, ds_list_find_value(list, 2) );
        instance_create(320, 24, ds_list_find_value(list, 3) );
        instance_create(560, 80, ds_list_find_value(list, 4) );
        instance_create(488, 184, ds_list_find_value(list, 5) );
        instance_create(552, 248, ds_list_find_value(list, 6) );
        instance_create(616, 200, ds_list_find_value(list, 7) );
        break;
    case "rm14": // 6
        instance_create(88, 120, ds_list_find_value(list, 0) );
        instance_create(192, 120, ds_list_find_value(list, 1) );
        instance_create(384, 120, ds_list_find_value(list, 2) );
        instance_create(224, 224, ds_list_find_value(list, 3) );
        instance_create(352, 224, ds_list_find_value(list, 4) );
        instance_create(480, 224, ds_list_find_value(list, 5) );
        instance_create(208, 304, ds_list_find_value(list, 6) );
        instance_create(328, 304, ds_list_find_value(list, 7) );
        break;
    case "rm15": // 6
        instance_create(128, 176, ds_list_find_value(list, 0) );
        instance_create(216, 176, ds_list_find_value(list, 1) );
        instance_create(304, 176, ds_list_find_value(list, 2) );
        instance_create(392, 176, ds_list_find_value(list, 3) );
        instance_create(480, 176, ds_list_find_value(list, 4) );
        instance_create(216, 288, ds_list_find_value(list, 5) );
        instance_create(304, 288, ds_list_find_value(list, 6) );
        instance_create(392, 288, ds_list_find_value(list, 7) );
        break;
    
    default:
        break;
}
