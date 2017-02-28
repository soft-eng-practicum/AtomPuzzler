/**
* Track failed test
*
* description is displayed on failing test
*
*/


with(obj_unitTest)
{
description = argument[0];
obj_unitTest.result[obj_unitTest.test_count] = c_red;
obj_unitTest.fail_count += 1;
test_lines += "#Failed: ";
test_lines += description;
}
