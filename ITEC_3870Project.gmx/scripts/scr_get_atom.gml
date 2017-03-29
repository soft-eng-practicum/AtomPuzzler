///scr_get_atom(array)
/*
    Gets the array from scr_get_solution
    E.g. (Given)
        array[0] = "Na"
        array[1] = "O"
        array[2] = "H"
        
    Take array and return an array of objects associated with the symbol.
    
    If given an array of {"Na", "O", "H"}
        new_array[0] = obj_atom_na
        new_array[1] = obj_atom_o
        new_array[2] = obj_atom_h
*/

var array = argument[0];


