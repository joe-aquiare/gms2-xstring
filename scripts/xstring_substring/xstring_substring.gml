/// @function             xstring_substring(str, index, count)
/// @description          Returns a substring of a given string.
/// @param {string} str   The string to check against.
/// @param {real}   index The starting character.
/// @param {real}   count How many characters are in the substring. Goes to the end of the string by default.

function xstring_substring(str, index, count = undefined) {
	
	//Return whole string if count is undefined
	if(is_undefined(count)) {
		return string_copy(str, index, string_length(str) - index + 1);
	} 
	
	//Else, return string portion
	return string_copy(str, index, count);	
	
}