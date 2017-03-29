///log_list(type, console_message, ds_list)

var type = argument[0];
var console_message = argument[1];
var list = argument[2];
var message = "";

for(i = 0; i < ds_list_size(list); i++) {
    message += string(ds_list_find_value(list, i));
}

log(type , console_message + message);
