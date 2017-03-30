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
        instance_create(188, 324, array[0]);
        instance_create(284, 296, array[1]);
        instance_create(380, 324, array[2]);
        instance_create(284, 420, obj_atom_N);  //suppose to be random
        break;
    case "rm2":
        instance_create(200, 324, array[0]);
        instance_create(480, 300, array[1]);
        instance_create(208, 84, array[2]);
        instance_create(264, 84, obj_atom_N);   //suppose to be random
        break;
    case "rm3":
        instance_create(188, 324, array[0]);
        instance_create(284, 296, array[1]);
        instance_create(380, 324, array[2]);
        instance_create(284, 420, obj_atom_N);  //suppose to be random
        break;
    case "rm4":
        instance_create(188, 324, array[0]);
        instance_create(284, 296, array[1]);
        instance_create(380, 324, array[2]);
        instance_create(284, 420, obj_atom_N);  //suppose to be random
        break;
    case "rm5":
        instance_create(188, 324, array[0]);
        instance_create(284, 296, array[1]);
        instance_create(380, 324, array[2]);
        instance_create(284, 420, obj_atom_N);  //suppose to be random
        break;
    default:
        break;
}
