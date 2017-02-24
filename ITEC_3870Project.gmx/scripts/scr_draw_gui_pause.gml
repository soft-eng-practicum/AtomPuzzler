///scr_draw_gui_pause()

//Draws the temp screenshot and display onto screen.

width = display_get_gui_width();
height = display_get_gui_height();

draw_sprite(scrn, 0, 0, 0);
draw_set_alpha(0.5);
    draw_rectangle(0, 0, width, height, false);
draw_set_alpha(1);

draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
        //instance_create(width/2, height/2, obj_banner);
        //instance_create(room_width/2 - 120, room_height/2 - 120, obj_pause_menu);
        draw_text(width/2, height/2, "PAUSED");
        //draw_text(width/2, height/2 + 25, "[C]ontinue [R]estart [M]ain Menu [Q]uit");
    draw_set_valign(-1);
draw_set_halign(-1);
