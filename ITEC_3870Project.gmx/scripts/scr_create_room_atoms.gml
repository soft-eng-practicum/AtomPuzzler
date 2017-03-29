/// scr_create_room_atoms(room, atoms)
// Uses scr_get_array_of_atoms
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
        instance_create(72, 316, array[0]);
        break;
    case "rm2":
        instance_create(72, 316, array[0]);
        break;
    case "rm3":
        instance_create(72, 316, array[0]);
        break;
    case "rm4":
        instance_create(72, 316, array[0]);
        break;
    case "rm5":
        instance_create(72, 316, array[0]);
        break;
    default:
        break;
}
