///scr_get_atom(String symbol)
/*
    Gets the symbol of an atom (a String value)
    E.g.
        scr_get_atom("Na");
        returns obj_atom_Na;
        
    Script: Takes the symbol and returns an object
    @return obj_atom
*/

var symbol = argument[0];
var obj;

switch(symbol)
{
    case "H":
        obj = obj_atom_H;
        break;
    case "O":
        obj = obj_atom_O;
        break;
    case "Na":
        obj = obj_atom_Na;
        break;
    default:
        obj = "No Object Found";
    
    return obj;
}
