///scr_drop_atom(ds_list)
/*
    Takes the player's inventory and drops the last index in the list.
    
    Programmer's Note: 
        Using GML's ds functions, the list size will not stay the same
        if a variable is removed from list, it is then replaced with null value.
        Therefore by clearing the list and then reading the values, the size will change.
        
    Script:
        Taking the contents in player's inventory and store in array.
        Clear the inventory list(empty it) and use stored array to put back into list
        except the last value.
        
    @return obj_atom
*/

var current_list = argument[0];
var obj;
var list_size = ds_list_size(current_list);
var str_before = "";
var str_after = "";
var obj_str = "";
var array;

//var empty_list = ds_list_create();

// Store values of inventory into an array
for(i = 0; i < list_size; i++) {
    array[i] = ds_list_find_value(current_list, i);
    str_before += string(ds_list_find_value(current_list, i));
    
    if(i == (list_size - 1)) {
        obj_str = ds_list_find_value(current_list, i);
        obj = scr_get_atom(obj_str);
    }
}

show_debug_message("scr_drop_atom: atom_obj =" + string(obj_str));

// Debug print size before and list before
show_debug_message("scr_drop_atom: Inventory size before: " + string(list_size));
show_debug_message("scr_drop_atom: list before: " + str_before);

// Clear list and emptys it
ds_list_clear(current_list);

// Stores empty list with array
for(i = 0; i < array_length_1d(array) - 1; i++) {
    ds_list_add(current_list, array[i]);
}

// New list size
var list_size_new = ds_list_size(current_list);

// Debug list
for(i = 0; i < list_size_new; i++) {
    str_after += string(ds_list_find_value(current_list, i));
}

// Debug print list after and size after
show_debug_message("scr_drop_atom: Inventory size after: " + string(ds_list_size(current_list)));
show_debug_message("scr_drop_atom: list after: " + str_after);
show_debug_message("");

// Return Atom Object
return obj;

