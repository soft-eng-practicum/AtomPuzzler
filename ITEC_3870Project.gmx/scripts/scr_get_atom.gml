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
        obj = obj_atom_h;
        break;
    case "O":
        obj = obj_atom_o;
        break;
    case "Na":
        obj = obj_atom_na;
        break;
    case "S":
        obj = obj_atom_s;
        break;
    case "N":
        obj = obj_atom_n;
        break;
    default:
        obj = -999;     // this should never happen(CHANGE TO AN ERROR OBJECT)
        break;
}

return obj;
