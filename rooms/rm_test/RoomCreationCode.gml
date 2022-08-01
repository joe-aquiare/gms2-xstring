//show_message(string(xstring_count("maha, hama mama hama maha", "ha")));

//Test xstring_split
//show_message("[" + xstring_slice("Apple, Banana, Kiwi", 8, 14) + "]");

var sb = xstring_builder();

sb.xsb_append("Hello!");

show_message(sb.xsb_get());

xsb_append("Hello!");