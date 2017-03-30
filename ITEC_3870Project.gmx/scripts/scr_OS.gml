// this script will look for the operating system

globalvar window_width, window_height;

switch(os_type){
    //desktop
    case(os_windows):
    case(os_macosx):
    case(os_linux):
        //the base width and hight on desktop
        //window_width = 640;
        //window_width = 480;
        moblie = false;
        break;
    
    //mobile
    case(os_android):
    case(os_ios):
    case(os_windows):
    case(os_tizen):
        //get the width and height of the device
        window_width = round(display_get_width());    
        window_height = round(display_get_height());
        mobile = true;
        break;
        
}


if(mobile)
{
var max_w = window_width;
var max_h = window_height;
var aspect = window_width / window_height;
if (max_w < max_h) {
  var VIEW_WIDTH = min(base_w, max_w);
  var VIEW_HEIGHT = VIEW_WIDTH / aspect;
} else {
  var VIEW_HEIGHT = min(base_h, max_h);
  var VIEW_WIDTH = VIEW_HEIGHT * aspect;
}
view_wview[0] = floor(VIEW_WIDTH);
view_hview[0] = floor(VIEW_HEIGHT);
view_wport[0] = max_w;
view_hport[0] = max_h;

surface_resize(application_surface, view_wview[0], view_hview[0]);
window_width = view_wview[0];
window_height = view_hview[0];
    //display_get_orientation = display_landscape; 
}

