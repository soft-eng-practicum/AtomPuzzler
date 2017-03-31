/// scr_debug_list()

var inv_string = "";
var rm_string = "";

//Debugging both lists

show_debug_message("---------------------------");

for(i = 0; i < ds_list_size(global.inventory); i++)
{
    inv_string += string(ds_list_find_value(global.inventory, i));
    //show_debug_message(ds_list_find_value(global.inventory, i));
}

show_debug_message("Inventory List: " + inv_string);

for(i = 0; i < ds_list_size(global.room_list); i++)
{
    rm_string += string(ds_list_find_value(global.room_list, i));
    //show_debug_message(ds_list_find_value(global.room_list, i));
}

show_debug_message("Room List: " + rm_string);

show_debug_message("---------------------------");
