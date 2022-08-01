/// @function             xstring_split(str, delim)
/// @description          Splits a string based on a delimiter parameter.
/// @param {string} str   The string to check against.
/// @param {string} delim The delimeter to use.

function xstring_split(str, delim) {
	
	var str_list = ds_list_create(); //List of string parts
	var new_part = ""; //New part to add
	
	//While the delimter is still in the string...
	while(string_pos(delim, str) > 0) {
		
		//Grab the next part
		new_part = string_copy(str, 0, string_pos(delim, str) - 1);
		
		//Add to the list and delete the part from the string
		ds_list_add(str_list, new_part);
		str = string_copy(str, string_length(new_part) + 2, string_length(str) - string_length(new_part));
	}
	
	//Add the final part to the string
	ds_list_add(str_list, str);
	
	//Return the list
	return str_list;
	
}