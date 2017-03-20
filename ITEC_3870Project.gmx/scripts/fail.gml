/**
* Track failed test
*
*/


with(obj_unitTest)
{
testBoolean = false;
description = argument[0];
pass_failed = "#Failed Test: " + description;
}
