/// canvas_fullscreen(base_w, base_h, browser_width, browser_height)
// argument0 = base value for scaling
// argument1 = the current browser width
// argument2 = the current browser height

if(mobile){

view_wport[0] = argument2;
view_hport[0] = argument3;

var aspect = (argument2 / argument3);
if (aspect < 1)
    {
    view_hview[0] = max(argument1, argument3);
    view_wview[0] = (view_hview[0] * aspect);
    }
else
    {
    view_wview[0] =  max(argument0, argument2);
    view_hview[0] = (view_wview[0] / aspect);
    
    }

surface_resize(application_surface, view_wview[0], view_hview[0]);
}
