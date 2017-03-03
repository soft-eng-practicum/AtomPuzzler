///Display the test
draw_set_alpha(0.6);
<<<<<<< HEAD
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
=======
draw_set_color(c_black);
draw_rectangle(x, y, x + width_pane2, y + height_pane2, false);
//draw_rectangle(x , y+view_hview-height_pane3 , x+width_pane3 , y+view_hview , false);
//draw_rectangle(x+view_wview-width_pane4 , y , x+view_wview , y+view_hview , false);
draw_set_alpha(1);
draw_text(view_xview[0], 10, test_plan + test_lines + test_results);

draw_x = room_height / 15;
draw_y = room_height / 15;
>>>>>>> refs/remotes/origin/master
