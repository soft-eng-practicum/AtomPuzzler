/// ScWriteToLog(type,message)
var logType = argument[0];
var message = argument[1];

// Log Type Definitions
var SCLOG_DEBUG = 0;
var SCLOG_INFO = 1;
var SCLOG_WARNING = 2;
var SCLOG_ERROR = 3;
var SCLOG_OVERFLOW = -1337; // Sorry had to be done

// Check input variables
if( !is_string(message) ){
    // Not a string just convert it
    message = string(message);
}

if( is_real(logType) ){
    // It's a number check if it is in the correct range
    if( (logType < SCLOG_DEBUG or logType > SCLOG_ERROR) and logType != SCLOG_OVERFLOW ){
        show_error("WARNING: INCORRECT LOG TYPE GIVEN: " + string(logType) + " for message: '" + message + "'", false);
        message = message + " (WARNING: INCORRECT LOG TYPE GIVEN: " + string(logType) + ")";
        logType = SCLOG_WARNING;
    }
}

// Next add it to the correct object
if( instance_exists(objScLogConsole) )
{
    // At least one instance is available now check room configuration
    if( instance_number(objScLogConsole) > 1 ){
        // More then one instance exists
        show_error("More then one objScLogConsole exists in this room, not writing log message", true);
    }else{
        // There is only one :). Get the instance
        logInstance = instance_find(objScLogConsole, 0);
        
        // Some logic for shifting up lines (first one disappears)
        for( var i = 1; i < logInstance.maxLines; i++ ){
            logInstance.lines[i - 1] = logInstance.lines[i];
        }
        
        // Append Time if enabled
        var time = "";
        if( logInstance.showTime ){
            time = date_time_string(date_current_datetime()) + " ";
            
            // Check if we need to prefix a zero
            if( string_length(time) < 9 )
                time = "0" + time;
            
            // If we are in overflow mode just put spaces
            if( logType == SCLOG_OVERFLOW ){
                time = "         ";
            }    
        }
        
        // Compose the actual line
        switch(logType)
        {
            case SCLOG_DEBUG:
                message = time + "[DEBUG]   " + message;
                break;
            case SCLOG_INFO:
                message = time + "[INFO]    " + message;
                break;
            case SCLOG_WARNING:
                message = time + "[WARNING] " + message;
                break;
            case SCLOG_ERROR:
                message = time + "[ERROR]   " + message;
                break;
            case SCLOG_OVERFLOW:
                message = time + "          " + message;
                break;
        }
        
        // Check width and write line (in parts if required)
        draw_set_font(fntScLogFont);
        var logLineWidth = string_width(message);       // Width of the log line
        var scWindowTreshold = window_get_width() - 20; // Window Width - Padding
        var scMinWidth = 11 + string_length(time);      // Infinite Loop Detection and Skipping initial spaces
        
        // Check size
        if( logLineWidth > scWindowTreshold ){
            // Calculate maximum characters to draw
            maxCharsInWidth = scMinWidth;
            lastSpace = -1;
            maxFound = false;
            
            // Loop trough characters
            while( maxCharsInWidth < string_length(message) and !maxFound ){
                var scTestString = string_copy(message, 1, maxCharsInWidth);
                
                // Check string width
                if( string_width(scTestString) <= scWindowTreshold ){
                    // Store last found space location (for nice splitting)
                    if( string_char_at(scTestString, maxCharsInWidth) == " " )
                        lastSpace = maxCharsInWidth;
                        
                    // Increase Counter
                    maxCharsInWidth++;
                }else{
                    // Store max width found
                    maxFound = true;
                }
            }
            
            // As the string needs to be splitted make it nice
            if( lastSpace != -1 ){
                logInstance.lines[logInstance.maxLines - 1] = string_copy(message, 1, lastSpace);
                log(SCLOG_OVERFLOW, string_copy(message, lastSpace + 1, string_length(message) - lastSpace));
            }else{
                // No spaces found just cut it.
                logInstance.lines[logInstance.maxLines - 1] = string_copy(message, 1, maxCharsInWidth);
                log(SCLOG_OVERFLOW, string_copy(message, maxCharsInWidth + 1, string_length(message) - maxCharsInWidth));
            }
        }
        else{
            logInstance.lines[logInstance.maxLines - 1] = message;
        }
    }
}
