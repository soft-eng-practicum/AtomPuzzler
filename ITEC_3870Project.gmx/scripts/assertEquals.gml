///assertEquals(Description, Expected, Actual)
/* Description --> the title of the test
    Ex: assertEquals(Test numbers, 100, x)
                    (Test objects, obj_atom, x)
*/

description = argument0;
expected = argument1;
actual = argument2;

if(expected == actual)
{
    obj_unitTest.pass_count +=1;
    obj_unitTest.test_count+=1;
    pass(); 
}
else
{
    obj_unitTest.fail_count += 1;
    obj_unitTest.test_count += 1;
    description += " #EXPECTED: "+string(expected)+". ACTUAL WAS: "+string(actual);
    fail(description);
}



