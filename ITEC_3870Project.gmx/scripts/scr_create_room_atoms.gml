/// scr_create_room_atoms("room name", atoms)
// Uses scr_get_array_of_atom in Objects/Room/init_room_properties
/*
    Takes in an array of atoms and puts them into a room
    Create instances of atom objects and fill them inside a room
*/

var rm_name = argument[0];  //room name (String)
var array = argument[1];    //array of atom objects
var array_size = array_length_1d(array);

switch(rm_name)
{
    case "rm1":
        instance_create(188, 324, array[0] );
        instance_create(284, 296, array[1] );
        instance_create(380, 324, array[2] );
        instance_create(284, 420, scr_get_random_atom() );
        break;
    case "rm2":
        instance_create(200, 324, array[0] );
        instance_create(480, 300, array[1] );
        instance_create(208, 84, array[2] );
        instance_create(264, 84, scr_get_random_atom() );
        break;
    case "rm3":
        instance_create(88, 120, array[0] );
        instance_create(616, 192, array[1] );
        instance_create(504, 312, array[2] );
        instance_create(24, 240, scr_get_random_atom() );
        instance_create(372, 328, scr_get_random_atom() );
        break;
    case "rm4":
        instance_create(328, 88, array[0] );
        instance_create(600, 112, array[1] );
        instance_create(512, 216, array[2] );
        instance_create(224, 320, scr_get_random_atom() );
        break;
    case "rm5":
        instance_create(32, 40, array[0] );
        instance_create(368, 64, array[1] );
        instance_create(320, 400, array[2] );
        instance_create(352, 296, scr_get_random_atom() );
        break;
    default:
        break;
}
