/// @function              xstring_ends_with(str, substr)
/// @description           Returns whether a string ends with the specified substring.
/// @param {string} str    The string to check against.
/// @param {string} substr The substring to check for.

function xstring_ends_with(str, substr) {
	
	return string_copy(str, string_length(str) - string_length(substr) + 1, string_length(substr)) == substr;
	
}