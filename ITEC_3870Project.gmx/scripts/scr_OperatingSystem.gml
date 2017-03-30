
switch (os_type) {
  // desktop
  case os_windows:
  case os_linux:
  case os_macosx:
     window_set_size(640, 480); 
    mobile = false;
  break;
  
  // mobile
    case os_android:
    case os_ios:
    case os_winphone:
    case os_tizen:
    // change screen size
        var max_w = display_get_width();
        var max_h = display_get_height();
        var aspect = display_get_width() / display_get_height();
        if (max_w < max_h)
        {
            // portait
            var width = max(1, max_w);
            var height = width / aspect;
        }
        else
        {
            // landscape
            var VIEW_HEIGHT = max(1, max_h);
            var VIEW_WIDTH = VIEW_HEIGHT * aspect;
        }
    
        view_wview[0] = floor(VIEW_WIDTH);
        view_hview[0] = floor(VIEW_HEIGHT);
        view_wport[0] = max_w;
        view_hport[0] = max_h;
        
        surface_resize(application_surface, view_wview[0], view_hview[0]);
        mobile = true;
        break;
    }




