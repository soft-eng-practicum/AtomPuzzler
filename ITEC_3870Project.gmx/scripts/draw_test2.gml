///Display the test

draw_set_colour(c_black);
draw_set_halign(fa_left);
draw_rectangle(0,0, room_width,room_height,false);
draw_set_colour(c_white);
draw_text(10, 10, "Passed: " + string(obj_unitTest2.pass_count));
draw_text(10, 30, "Failed: " + string(obj_unitTest2.fail_count)); 
draw_text(10, 50, "Total Test: " + string(obj_unitTest2.test_count)); 

draw_text(10, 70, pass_failed2 + results);
depth = -10001;
