/// @function    xstring_builder()
/// @description Returns a string builder object.
function xstring_builder() {
	
	//Return string builder object
	return {

		text: "", //Text component
		capacity: 2147483647, //Max length for text component (Do not modify directly)
		
		//Clears the current text buffer
		sb_clear: function() {
			self.text = "";	
		},
		
		//Appends another string to the end of the current text buffer
		sb_append: function(str) {
			self.text += str;
		},
		
		//Clears the current text buffer
		sb_set_capacity: function(capacity) {
			self.capacity = capacity;
			if(string_length(self.text) > capacity) {
				self.text = string_copy(self.text, 0, capacity);	
			}
		},
		
	};
	
}

//String builder error macros
#macro XERROR_BUILDER_MISUSE _xstring_builder_error_misuse()
function _xstring_builder_error_misuse() {
	show_error("Error: xstring_builder function cannot be called without a string builder instance. Use xstring_builder().", false);
}

//String builder function definitions
function sb_clear()                { XERROR_BUILDER_MISUSE; }
function sb_append(str)            { XERROR_BUILDER_MISUSE; }
function sb_set_capacity(capacity) { XERROR_BUILDER_MISUSE; }

