/// scr_get_random_atom()
// Returns a random atom

var random_roll = irandom(29);  //Starts from 0 to n
var obj;

switch(random_roll)
{
    //VARIOUS ELEMENTS (13)
    case 0:
        obj = obj_atom_B;
        break;
    case 1:
        obj = obj_atom_Br;
        break;
    case 2:
        obj = obj_atom_C;
        break;
    case 3:
        obj = obj_atom_Cl;
        break;
    case 4:
        obj = obj_atom_F;
        break;
    case 5:
        obj = obj_atom_Fe;
        break;
    case 6:
        obj = obj_atom_H;
        break;
    case 7:
        obj = obj_atom_I;
        break;
    case 8:
        obj = obj_atom_N;
        break;
    case 9:
        obj = obj_atom_O;
        break;
    case 10:
        obj = obj_atom_P;
        break;
    case 11:
        obj = obj_atom_S;
        break;
    case 12:
        obj = obj_atom_Ti;
        break;
    
    //NOBLE GASES (5)
    case 13:
        obj = obj_atom_Ar;
        break;
    case 14:
        obj = obj_atom_He;
        break;
    case 15:
        obj = obj_atom_Kr;
        break;
    case 16:
        obj = obj_atom_Ne;
        break;
    case 17:
        obj = obj_atom_Xe;
        break;
    
    //ALKALI METALS (6)
    case 18:
        obj = obj_atom_Cs;
        break;
    case 19:
        obj = obj_atom_Fr;
        break;
    case 20:
        obj = obj_atom_K;
        break;
    case 21:
        obj = obj_atom_Li;
        break;
    case 22:
        obj = obj_atom_Na;
        break;
    case 23:
        obj = obj_atom_Rb;
        break;
    
    //ALKALINE EARTH METALS (6)
    case 24:
        obj = obj_atom_Ba;
        break;
    case 25:
        obj = obj_atom_Be;
        break;
    case 26:
        obj = obj_atom_Ca;
        break;
    case 27:
        obj = obj_atom_Mg;
        break;
    case 28:
        obj = obj_atom_Ra;
        break;
    case 29:
        obj = obj_atom_Sr;
        break;
    
    //ATOM SYMBOL DOES NOT EXIST THEREFORE THIS SHOULD NEVER OCCUR
    //CHECK IF ANY ATOM OBJECTS HAVE BEEN UPDATED OR CREATED AND ADD THEM TO THIS LIST
    default:
        obj = -999;
        break;
}

return obj;
