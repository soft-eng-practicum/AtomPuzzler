/// scr_get_room_pool(Real difficulty)
/*
    Puts all rooms, unordered, in a list.
    
    @params: Takes a real(int) from 0, 1, or 2 in terms from easy, normal, or hard
    
    @return ds_list (shuffled and randomized in order of normal room then lab room)
*/

var difficulty = argument[0];
var final_list = ds_list_create();
var rm_list = ds_list_create();
var lab_list = ds_list_create();

// Easy difficulty rooms
if(difficulty == 0) {
    ds_list_add(rm_list, rm1);
    ds_list_add(rm_list, rm2);
    ds_list_add(rm_list, rm3);
    ds_list_add(rm_list, rm4);
    ds_list_add(rm_list, rm5);
    ds_list_shuffle(rm_list);
    
    ds_list_add(lab_list, lab1);
    ds_list_add(lab_list, lab2);
    ds_list_add(lab_list, lab3);
    ds_list_add(lab_list, lab4);
    ds_list_add(lab_list, lab5);
    ds_list_shuffle(lab_list);
}

// Normal difficulty rooms
if(difficulty == 1) {
    ds_list_add(rm_list, rm6);
    ds_list_add(rm_list, rm7);
    ds_list_add(rm_list, rm8);
    ds_list_add(rm_list, rm9);
    ds_list_add(rm_list, rm10);
    ds_list_shuffle(rm_list);
    
    ds_list_add(lab_list, lab6);
    ds_list_add(lab_list, lab7);
    ds_list_add(lab_list, lab8);
    ds_list_add(lab_list, lab9);
    ds_list_add(lab_list, lab10);
    ds_list_shuffle(lab_list);
}

// Hard difficulty rooms
if(difficulty == 2) {
    ds_list_add(rm_list, rm11);
    ds_list_add(rm_list, rm12);
    ds_list_add(rm_list, rm13);
    ds_list_add(rm_list, rm14);
    ds_list_add(rm_list, rm15);
    ds_list_shuffle(rm_list);
    
    ds_list_add(lab_list, lab11);
    ds_list_add(lab_list, lab12);
    ds_list_add(lab_list, lab13);
    ds_list_add(lab_list, lab14);
    ds_list_add(lab_list, lab10);
    ds_list_shuffle(lab_list);
}

// Lists are already shuffled, add to new list in order of normal than lab
for(i = 0; i < 5; i++) {
    ds_list_add(final_list, ds_list_find_value(rm_list, i));
    //ds_list_add(final_list, ds_list_find_value(lab_list, i));
}

show_debug_message("scr_get_room_pool: final_list size: " + string(ds_list_size(final_list)));

// Debug: Should print out final_list unordered
for(i = 0; i < ds_list_size(final_list); i++) {
    show_debug_message("scr_get_room_pool: List[" + string(i) + "]: " + string(ds_list_find_value(final_list, i)) );
}

return final_list;
