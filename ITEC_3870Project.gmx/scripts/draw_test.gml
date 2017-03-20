///Display the test

draw_set_colour(c_black);
draw_set_halign(fa_left);
draw_set_alpha(0.7);
draw_rectangle(x , y , x+width_pane2 , y+height_pane2 , false);
draw_set_alpha(1);
draw_set_colour(c_white);
draw_set_font(font_Default);
draw_text(10, 10, "Passed: " + string(obj_unitTest.pass_count));
draw_text(10, 30, "Failed: " + string(obj_unitTest.fail_count)); 
draw_text(10, 50, "Total Test: " + string(obj_unitTest.test_count)); 
if(testBoolean)
{
    passedTest();
}
else
{
    failedTest();
}

depth = -9000;
