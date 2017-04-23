///scr_unpause()

//Deletes temp screenshot and activates all objects that inherit par_pausable

sprite_delete(scrn);
sound_fade(music_AtomPuzzlerTheme, 1, 1000);
instance_activate_object(par_pausable);
