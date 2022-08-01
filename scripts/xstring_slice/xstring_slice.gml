/// @function             xstring_slice(start, end)
/// @description          Extracts a part of a string and returns the extracted part in a new string.
/// @param {string} str   The string to extract from.
/// @param {string} front The start position to extract.
/// @param {string} back  The end position to extract (not included).

function xstring_slice(str, front, back) {
	
	return string_copy(str, front, back - front);
	
}