///scr_get_solution(array)
// Gets array from scr_read_file
/*
    The param array contains a complete String for the solution. e.g. "HOH"
    Separates array and stores into new array of String and return array.
    
    E.g.
        Given:      {"Na, O, H"}
        Result:     {"Na", "O", "H"}
    
    @return array
*/

var array = argument[0];
var solution = array[2];
var length = string_length(solution);
show_debug_message("scr_get_solution: " + string(solution));
show_debug_message("scr_get_solution: length: " + string(string_length(solution)));

//Store result into array
var result = "";

//New Array's Index
var index = 0;

//Loops through entire string for each character, char index starts at 1
for(i = 1; i <= length; i++) {

    show_debug_message("scr_get_solution: char_at: " + string(string_char_at(solution, i)));

    if( (string_char_at(solution, i) != ';') && (string_char_at(solution, i) != ',') && (string_char_at(solution, i) != ' ') ) {
        result += string_char_at(solution, i);
    }
    if( string_char_at(solution, i) == ',' ) {
        show_debug_message("scr_get_solution: result: " + string(result));
        new_array[index] = result;      //store result to array
        result = "";                    //reset result
        index++;                        //array index increase
    }
    if( string_char_at(solution, i) == ';' ) {
        show_debug_message("scr_get_solution: last result: " + string(result));
        new_array[index] = result;
        break;
    }
}

show_debug_message("scr_get_solution: new_array length: " + string(array_length_1d(new_array)));

//Logging
for(i = 0; i < array_length_1d(new_array); i++) {
    show_debug_message("scr_get_solution: new_array[" + string(i)  + "]: " + string(new_array[i]));
}

return new_array;
