/// Hashcode

var i;
hash = 1;
for(i = 0; i < string_length(argument0); i++)
{
    hash += ord(string_char_at(argument0, i));
}
return hash;
