///scr_randomize_room_atoms(1D-array, "rm_name", int correct_amount_of_atoms, int extra_atoms)
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
var correct_amount = argument[2];
var extra_atoms = argument[3];
var unsorted_array;

show_debug_message("scr_randomize_room_atoms: Room Name: " + string(rm_name));
show_debug_message("scr_randomize_room_atoms: Correct amount of atoms: " + string(correct_amount));
show_debug_message("scr_randomize_room_atoms: Room Name: " + string(extra_atoms));

switch(rm_name)
{
    case "rm1":
        for(i = 0; i < correct_amount_of_atoms + extra_atoms; i++)
        {
            var dice_roll = irandom(3);
        }
        break;
    case "rm2":

        break;
    case "rm3":

        break;
    case "rm4":

        break;
    case "rm5":

        break;
    default:
        break;

}
