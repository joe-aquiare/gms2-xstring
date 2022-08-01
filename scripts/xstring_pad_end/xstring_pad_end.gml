/// @function               xstring_pad_end(str, padding)
/// @description            Appends the end of a string with a substring.
/// @param {string} str     The string to pad.
/// @param {string} padding The substring to pad the start with.
/// @param {real}   count   How many times the padding is repeated.

function xstring_pad_end(str, substr, count = 1) {
	
	repeat(count) {
		str = str + substr;
	}
	
	return str;
	
}