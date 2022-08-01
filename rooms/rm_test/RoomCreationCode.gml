//show_message(string(xstring_count("maha, hama mama hama maha", "ha")));

//Test xstring_split
//show_message("[" + xstring_slice("Apple, Banana, Kiwi", 8, 14) + "]");

var sb = xstring_builder();

sb.sb_append("Hello!");

show_message(sb.sb_get());
show_message(string(sb.sb_get_length()));

sb.sb_append("I love cake!");

show_message(sb.sb_get());

//sb_append("Hello!");