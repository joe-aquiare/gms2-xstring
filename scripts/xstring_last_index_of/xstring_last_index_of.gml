/// @function              xstring_last_index_of(str, substr)
/// @description           Finds the last index of a substring inside a string.
/// @param {string} str    The string to search.
/// @param {string} substr The substring to search for.

function xstring_last_index_of(str, substr) {

	var original_str = str;
	var index = -1;
	
	while(string_pos(substr, str) != 0) {

		//Get new position and calculate original string index
		var pos = string_pos(substr, str);
		index = string_length(original_str) - string_length(str) + pos;
		
		//Resize original string to exclude found substring
		str = string_copy(str, pos + string_length(substr), string_length(str) - (pos + string_length(substr)) +  1);
		
	}
	
	return index;
	
}