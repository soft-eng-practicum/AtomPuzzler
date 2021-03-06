/// scr_initialize_room_properties()

// Read file, needs to be initiated first
// Array contains all room properties with types Real and String (will be parsed using other scripts)
var array = scr_read_file("room_settings.ini", room_get_name(room));

// Initialize Variables
global.message = scr_get_message(array);
global.room_type = scr_get_type(array);
global.room_difficulty = scr_get_difficulty(array);
global.room_hint = scr_get_hint(array);
global.correct_charge = 0;

// Clear the previous list
ds_list_clear(global.room_list);

// Add values to room's list
global.s_array = scr_get_solution(array);   // scr_get_solution parses the string into an array of atom symbols(string array)
scr_array_to_list(global.s_array, global.room_list);    // takes the parsed array and adds to a ds_list

// Stop timer
obj_timer.stop = true;
