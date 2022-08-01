/// @function              xstring_starts_with(str, substr)
/// @description           Returns whether a string starts with the specified substring.
/// @param {string} str    The string to check against.
/// @param {string} substr The substring to check for.

function xstring_starts_with(str, substr) {
	
	return string_copy(str, 0, string_length(substr)) == substr;
	
}