///assertEquals(Description, Expected, Actual)

//this is used for automated testing
/* Description --> the title of the test
    Ex: assertEquals(Test numbers, 100, x)
                    (Test objects, obj_atom, x)
*/

description = argument0;
expected = argument1;
actual = argument2;

if(expected == actual)
{
    obj_unitTest2.pass_count +=1;
    obj_unitTest2.test_count+=1;
   // pass2(); 
}
else
{
    obj_unitTest2.fail_count += 1;
    obj_unitTest2.test_count += 1;
    description += " #EXPECTED: "+string(expected)+"#ACTUAL: "+string(actual);
    fail2(description);
}



