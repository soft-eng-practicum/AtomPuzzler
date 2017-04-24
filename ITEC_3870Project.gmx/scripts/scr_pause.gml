///scr_pause()

///Stores a temp screenshot and display using scr_draw_gui_pause

scrn = sprite_create_from_surface(application_surface, view_xview, view_yview, view_wport, view_hport, false, true, 0, 0);
audio_pause_sound(music_AtomPuzzlerTheme);
instance_deactivate_object(par_pausable);
