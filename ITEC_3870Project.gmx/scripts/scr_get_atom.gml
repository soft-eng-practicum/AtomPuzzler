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
    //VARIOUS ELEMENTS (13)
    case "B":
        obj = obj_atom_B;
        break;
    case "Br":
        obj = obj_atom_Br;
        break;
    case "C":
        obj = obj_atom_C;
        break;
    case "Cl":
        obj = obj_atom_Cl;
        break;
    case "F":
        obj = obj_atom_F;
        break;
    case "Fe":
        obj = obj_atom_Fe;
        break;
    case "H":
        obj = obj_atom_H;
        break;
    case "I":
        obj = obj_atom_I;
        break;
    case "N":
        obj = obj_atom_N;
        break;
    case "O":
        obj = obj_atom_O;
        break;
    case "P":
        obj = obj_atom_P;
        break;
    case "S":
        obj = obj_atom_S;
        break;
    case "Ti":
        obj = obj_atom_Ti;
        break;
    
    //NOBLE GASES (5)
    case "Ar":
        obj = obj_atom_Ar;
        break;
    case "He":
        obj = obj_atom_He;
        break;
    case "Kr":
        obj = obj_atom_Kr;
        break;
    case "Ne":
        obj = obj_atom_Ne;
        break;
    case "Xe":
        obj = obj_atom_Xe;
        break;
    
    //ALKALI METALS (6)
    case "Cs":
        obj = obj_atom_Cs;
        break;
    case "Fr":
        obj = obj_atom_Fr;
        break;
    case "K":
        obj = obj_atom_K;
        break;
    case "Li":
        obj = obj_atom_Li;
        break;
    case "Na":
        obj = obj_atom_Na;
        break;
    case "Rb":
        obj = obj_atom_Rb;
        break;
    
    //ALKALINE EARTH METALS (6)
    case "Ba":
        obj = obj_atom_Ba;
        break;
    case "Be":
        obj = obj_atom_Be;
        break;
    case "Ca":
        obj = obj_atom_Ca;
        break;
    case "Mg":
        obj = obj_atom_Mg;
        break;
    case "Ra":
        obj = obj_atom_Ra;
        break;
    case "Sr":
        obj = obj_atom_Sr;
        break;
    
    //ATOM SYMBOL DOES NOT EXIST THEREFORE THIS SHOULD NEVER OCCUR
    default:
        obj = -999;
        break;
}

return obj;
