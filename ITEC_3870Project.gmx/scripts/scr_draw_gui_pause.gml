///scr_draw_gui_pause()

//Draws the temp screenshot and display onto screen.

width = display_get_gui_width();
height = display_get_gui_height();

draw_sprite(scrn, 0, 0, 0);
draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(0, 0, width, height, false);
draw_set_alpha(1);

draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
        //instance_create(x, y, obj_banner);
        //instance_create(x - 120, y - 120, obj_pause_menu);
        draw_text_outlined(width/2, height/7, "PAUSED", c_yellow, c_black);
        draw_text_outlined(width/2, height/7 + 20, global.message, c_yellow, c_black);
        if(global.attempts > 1)
        {
            draw_set_color(c_yellow);
            draw_text_ext(width/2, height/7 + 100, global.room_hint, 18, 400);
        }
        //draw_text(x, y + 25, "[C]ontinue [R]estart [M]ain Menu [Q]uit");
    draw_set_valign(-1);
draw_set_halign(-1);
