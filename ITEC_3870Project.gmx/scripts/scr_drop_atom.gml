///scr_drop_atom(ds_list)
/*
    Takes the player's inventory and drop the last index in the list.
    
    Programmer's Note: 
        Using GML's ds functions, the list size will not stay the same
        if a variable is removed from list, it is then replaced with null value.
        Therefore by clearing the list and then reading the values, the size will change.
        
    Script:
        Taking the contents in player's inventory and store in array.
        Clear the inventory list(empty it) and use stored array to put back into list
        except the last value.
        Check list size before and after and set boolean value.
        
    @return boolean
*/

var current_list = argument[0];
var list_size = ds_list_size(current_list);
var drop_finished = false;
var str_before = "";
var str_after = "";

// Store values of inventory into an array
for(i = 0; i < list_size; i++) {
    array[i] = ds_list_find_value(current_list, i);
    str_before += string(ds_list_find_value(current_list, i));
}

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

// If the size from before and after are not the same, set to true other wise still false
if(list_size != list_size_new) drop_finished = true;

var boolean = "";

// Debug boolean
if(drop_finished){
    boolean = "true";
}
else{
    boolean = "false";
}

// Debug return boolean value
show_debug_message("scr_drop_atom: return bool: " + string(boolean));

// Return boolean variable
return drop_finished;

