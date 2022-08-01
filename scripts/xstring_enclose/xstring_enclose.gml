/// @function            xstring_enclose(str, ends)
/// @description         Encloses a string in a set of characters.
/// @param {string} str  The string to enclose.
/// @param {string  ends The symbols to append to the start and end of the string. Is split in half and appended to the front and back.

function xstring_enclose(str, ends) {
	
	return string_copy(ends, 0, string_length(ends) / 2) + str + string_copy(ends, (string_length(ends) / 2) + 1, string_length(ends) / 2);
	
}

//Shorthand for xstring_enclose.
function xs_e(str, ends) { return xstring_enclose(str, ends); }