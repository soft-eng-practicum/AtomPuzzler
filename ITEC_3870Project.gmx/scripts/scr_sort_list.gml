///scr_sort_list(argument0)
/*
    @params: ds_list
    @scripts: scr_compare_string
    What it does: Sorts out a list
*/

var temp;
var list = argument0;

for (i = 0; i < ds_list_size(list); i++) {

    for (j=0; j < (ds_list_size(list)-1); j++) {
    
        if(scr_compare_string(ds_list_find_value(list, j), ds_list_find_value(list, j+1)) == 1) {
            
            temp = ds_list_find_value(list, j);
            ds_list_replace(list, j, ds_list_find_value(list, j+1));
            ds_list_replace(list, j+1, temp);
        
        }
    }
}

