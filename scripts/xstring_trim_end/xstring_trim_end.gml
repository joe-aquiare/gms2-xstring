/// @function           xstring_trim_end(str)
/// @description        Returns a string trimmed of all back whitespace.
/// @param {string} str The string to trim.

function xstring_trim_end(str) {
	
	//Escape characters to trim
	var trim = " \n\r\t\v\f";

	//Trim from end
    var end_pos = string_length(str);
    while (string_pos(string_char_at(str, end_pos), trim)) {
        end_pos--;
    }
	
	//Return trimmed string
    return string_copy(str, 0, end_pos);
	
}