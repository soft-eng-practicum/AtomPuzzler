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

//Reads and stores room property into variables
var message = ini_read_string(rm_name, 'message', "Message Unavailable");
var type = ini_read_real(rm_name, "type", 0);
var solution = ini_read_string(rm_name, 'solution', "Solution Available");
var hint = ini_read_string(rm_name, "hint", "Hint Unavailable");
var difficulty = ini_read_real(rm_name, "difficulty", -1);

//Store property into array
array[0] = message;
array[1] = type;
array[2] = solution;
array[3] = hint;
array[4] = difficulty;

/*
//Debug
for(i = 0; i < array_length_1d(array); i++) 
{
    show_debug_message("Array[" + string(i) + "] = " + string(array[i]));
}

show_debug_message("");
*/


//Close File
ini_close();

//Return array
return array;
