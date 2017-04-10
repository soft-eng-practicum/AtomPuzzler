#define scr_OperatingSystem
// this script will check for the operating system

globalvar mobile;

switch (os_type) {
  // desktop
    case os_windows:
    case os_linux:
    case os_macosx:
        mobile = false;
        break;
  
  // mobile
    case os_android:
    case os_ios:
    case os_winphone:
    case os_tizen:
        mobile = true;
        break;
    }




#define scr_mobileScaling
/// scaling(base, browser_width, browser_height)
// argument0 = base value for scaling
// argument1 = the current browser width
// argument2 = the current browser height

base = argument0;
max_w = argument1;
max_h = argument2
globalvar aspect;

    view_wport[0] = max_w;
    view_hport[0] = max_h;
    aspect = (max_w / max_h);
    
    //portrait
    if (aspect < 1)
    {
        view_hview[0] = base;
        view_wview[0] = (base * aspect);
    }
    //landscape
    else
    {
        view_hview[0] = (base / aspect);
        view_wview[0] = base;
    }
    
    surface_resize(application_surface, view_wview[0], view_hview[0]);


#define scr_mobileStep
/*checks if the browser size changes to portrait or landscape
 and initialize the new width and height to the script:
 scr_mobileScaling*/
 
if (browser_width != width || browser_height != height)
{
    width = browser_width;
    height = browser_height;
    scr_mobileScaling(base_size, width, height);
}


#define scr_mobileInitialVaribles
//initialize the values
/* the room hiehgt is being used, since the room height
   is less than the room width. on the mobile 
   it will use a base room of 480 by 480 instead of 640 by 480.
   and scaled it accordingly to the device aspect in the 
   script: scr_mobileScaling */

base_size = room_height;
width = browser_width;
height = browser_height;
scr_mobileScaling(base_size, width, height);
#define scr_mobileControl
///scr_mobileControl(pointDirection);
/* put this in the step event
   return a value between 1 - 4*/

/*set the dpad initial value to return 0 
  when dpad isnt being used and switching between point of direction
*/
var dpad = 0;
pointDirection = argument0;
right = 1;
up    = 2;
left  = 3;
down  = 4;

// look for a value in a 360 degree circle
if((pointDirection < 45 && pointDirection >= 0) || pointDirection > 315)
{
    dpad = right;
}
if(pointDirection > 45 && pointDirection < 135)
{   
    dpad = up;
}
if(pointDirection > 135 && pointDirection < 225)
{
    dpad = left;

}
if(pointDirection > 225 && pointDirection < 315)
{
    dpad = down;
}

return dpad;
    