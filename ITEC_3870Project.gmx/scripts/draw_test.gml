///Display the test
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(x , y , x+width_pane2 , y+height_pane2 , false);
//draw_rectangle(x , y+view_hview-height_pane3 , x+width_pane3 , y+view_hview , false);
//draw_rectangle(x+view_wview-width_pane4 , y , x+view_wview , y+view_hview , false);
draw_set_alpha(1);
draw_text(view_xview[0], 10, test_plan+test_lines+test_results);

draw_x = room_height/15;
draw_y = room_height/15;
