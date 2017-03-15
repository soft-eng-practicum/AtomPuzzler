/**
* Track failed test
*
* description is displayed on failing test
*
*/


with(obj_unitTest)
{
testBoolean = false;
description = argument[0];
test_lines = "#Failed: " + description;
//show_debug_message(test_lines);
}
