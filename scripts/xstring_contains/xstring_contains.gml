/// @function              xstring_contains(str, substr)
/// @description           Returns true if a string contains another string.
/// @param {string} str    The string to check against.
/// @param {string} substr The string to look for.

function xstring_contains(str, substr) {
	
	return string_pos(substr, str) != 0;
	
}