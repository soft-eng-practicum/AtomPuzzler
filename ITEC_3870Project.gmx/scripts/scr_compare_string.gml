///scr_compare_string(argument0, argument1)
/*
    @params: String, String
    @return: int
    What it does: Compares two strings and returns an int value
*/

var result;
var s1 = argument0;
var s2 = argument1;

if(s1 > s2) {
    result = 1;
}
else {
    result = -1;
}

return result;
