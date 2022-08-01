/// @function              xstring_count(str, substr)
/// @description           Returns the amount of times a substring appears inside the given string.
/// @param {string} str    The string to check against.
/// @param {string} substr The string to count for.

function xstring_count(str, substr) {
	
	var count = 0;
	
	//Loop until the substring isn't found
	while(string_pos(substr, str) != 0) {
		
		//Increment count
		count++;

		//Resize original string to exclude found substring
		var pos = string_pos(substr, str);
		str = string_copy(str, pos + string_length(substr), string_length(str) - (pos + string_length(substr)) +  1);
		
	}
	
	return count;
	
}