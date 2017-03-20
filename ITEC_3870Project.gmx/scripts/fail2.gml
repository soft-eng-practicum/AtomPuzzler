/**
* Track failed test
*
* description is displayed on failing test
*
*/


with(obj_unitTest2)
{
description = argument[0];
pass_failed2 += "#Failed Test: " + description;
}
