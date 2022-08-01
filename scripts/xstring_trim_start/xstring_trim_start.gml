/// @function           xstring_trim_start(str)
/// @description        Returns a string trimmed of all front whitespace.
/// @param {string} str The string to trim.

function xstring_trim_start(str) {
	
	//Escape characters to trim
	var trim = " \n\r\t\v\f";
	
	//Trim from front
	var front_pos = 1;
    while (string_pos(string_char_at(str, front_pos), trim)) {
        front_pos++;
    }
	
	//Return trimmed string
    return string_copy(str, front_pos, string_length(str) - front_pos + 1);
	
}