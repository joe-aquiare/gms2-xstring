/// @function              xstring_index_of(str, substr)
/// @description           Finds the index of a substring inside a string. Wrapper function of GMS2 implementation.
/// @param {string} str    The string to search.
/// @param {string} substr The substring to search for.

function xstring_index_of(str, substr) {
	
	return string_pos(substr, str);
	
}