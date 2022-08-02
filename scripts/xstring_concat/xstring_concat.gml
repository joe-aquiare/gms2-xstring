/// @function    xstring_concat()
/// @description Concatenates multiple strings and/or characters together.

function xstring_concat() {
	
	var final = "";
	
	//Add all the arguments together
	for(var i = 0; i < argument_count; i++) {
		final += string(argument[i]);
	}
	
	return final;
	
}