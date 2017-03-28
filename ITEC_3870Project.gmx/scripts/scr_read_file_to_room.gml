///scr_read_file_to_room(directory, filename)

var directory = argument[0];
var filename = argument[1];
var file = file_text_open_read(directory + filename);

log(0, string(directory) + " -> " + string(filename));
