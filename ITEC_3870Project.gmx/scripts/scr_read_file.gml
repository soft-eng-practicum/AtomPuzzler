///scr_read_file(file_directory)

//var file_directory = argument[0];
//log(0, string(file_directory));

var file = working_directory + "settings.ini";


if(file_exists(file)) {
    ini_open(file);
    log(0, string(file));
    
    var room_message = ini_read_real('Room1', 'message', 0);
    log(0, string(room_message));
    
    ini_close();
}
