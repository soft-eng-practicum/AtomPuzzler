///scr_unpause()

//Deletes temp screenshot and activates all objects that inherit par_pausable

sprite_delete(scrn);
audio_resume_sound(music_AtomPuzzlerTheme);
instance_activate_object(par_pausable);
