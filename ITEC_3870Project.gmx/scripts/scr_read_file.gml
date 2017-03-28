///scr_read_file(filename, rm_name)
/*
    Opens file in working_directory and reads file type .ini
    Reads all properties in a file with key and value pairs
    Stores value into array and return array
    
    @return array
*/

//Instantiate argument variables
var filename = argument[0];
var rm_name = argument[1];

//working_directory location will vary depending on platform, in this case HTML5 will be in project folder 
var file = working_directory + filename;

//Open File
ini_open(file);
log(0, "Reading file: " + file);

//Reads and stores room property into variables
var message = ini_read_string(rm_name, 'message', "Message Unavailable");
var type = ini_read_real(rm_name, "type", 0);
var solution = ini_read_string(rm_name, 'solution', "Solution Available");
var hint = ini_read_string(rm_name, "hint", "Hint Unavailable");

//Store property into array
array[0] = message;
array[1] = type;
array[2] = solution;
array[3] = hint;

//Log Debug Info
log(1, "List of properties in " + rm_name);
log(1, "msg: " + message);
log(1, "type: " + string(type));
log(1, "solution: " + solution);
log(1, "hint: " + hint);
    
//Close File
ini_close();
log(0, "Closing file...");

//Return array stored with room properties
log(1, "scr_read_file: " + string(array));
return array;
