/// @function           xstring_trim(str)
/// @description        Returns a string trimmed of all front and back whitespace.
/// @param {string} str The string to trim.

function xstring_trim(str) {
	
	//Escape characters to trim
	var trim = " \n\r\t\v\f";
	
	//Trim from front
	var front_pos = 1;
    while (string_pos(string_char_at(str, front_pos), trim)) {
        front_pos++;
    }
	
	//Trim from end
    var end_pos = string_length(str);
    while (string_pos(string_char_at(str, end_pos), trim)) {
        end_pos--;
    }
	
	//Return trimmed string
    return string_copy(str, front_pos, end_pos - front_pos + 1);
	
}

//Shorthand for xstring_trim.
function xs_t(str) { return xstring_trim(str); }