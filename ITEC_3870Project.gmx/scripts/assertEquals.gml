///assertEquals(Description, Expected, Actual)
/* Description --> the title of the test
    Ex: assertEquals(Test numbers, 100, x)
                    (Test objects, obj_atom, x)
*/

ar = argument_count;
description = argument0;
expected = argument1;
actual = argument2;

if(expected == actual)
{
    pass(); 
}
else
{
  description += " #  EXPECTED: "+string(expected)+". ACTUAL WAS: "+string(actual);
  obj_unitTest.failing_tests[obj_unitTest.fail_count] = description;
  fail(description);
}



