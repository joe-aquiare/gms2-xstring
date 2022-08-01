/// @function            xstring_compare(str1, str2)
/// @description         Returns whether two strings are the same.
/// @param {string} str1 The first string to compare.
/// @param {string} str2 The second string to compare.

function xstring_compare(str1, str2) {
	
	return string_lower(string(str1)) == string_lower(string(str2));
	
}