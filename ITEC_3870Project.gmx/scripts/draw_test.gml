///Display the test
draw_set_alpha(0.6);
draw_rectangle(x , y , x+width_pane2 , y+height_pane2 , false);
draw_set_alpha(1);
draw_text(x, 10, "Passed: " + string(obj_unitTest.pass_count));
draw_text(x, 30, "Failed: " + string(obj_unitTest.fail_count)); 
draw_text(x, 50, "Total Test: " + string(obj_unitTest.test_count)); 
if(testBoolean)
{
    passedTest();
}
else
{
    failedTest();
}

