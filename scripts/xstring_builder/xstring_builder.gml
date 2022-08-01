/// @function    xstring_builder()
/// @description Returns a string builder object.
function xstring_builder() {
	
	//Return string builder object
	return {

		#region Properties
		
		text: "", //Text buffer
		capacity: 2147483647, //Max length for text buffer (Do not modify directly)
		
		#endregion
		
		#region Functions
		
		//Gets the text buffer of the string builder
		xsb_get: function() {
			return self.text;	
		},
		
		//Get text buffer length
		xsb_get_length: function() { 
			return string_length(self.text);
		}, 
		
		//Clears the current text buffer
		xsb_clear: function() {
			self.text = "";	
		},
		
		//Appends another string to the end of the current text buffer
		xsb_append: function(str) {
			self.text += str;
			__xstring_cleanup(self);
		},
		
		//Appends another string to the end of the current text buffer
		xsb_append_line: function(str) {
			self.text += "\n" + str;
			__xstring_cleanup(self);
		},
		
		//Clears the current text buffer
		xsb_set_capacity: function(capacity) {
			self.capacity = capacity;
			__xstring_cleanup(self);
		},
		
		//Inserts a substring into the text buffer
		xsb_insert: function(index, substr) {
			self.str = string_insert(str, self.text, index);
			__xstring_cleanup(self);
		},
		
		//Clones the current string builder and returns the copy of itself
		xsb_clone: function() {
			
			var new_sb = xstring_builder();
			new_sb.text = self.text + "";
			new_sb.capacity = self.capacity + 0;
			
			return new_sb;
		}
		
		#endregion
		
	};
	
}

#region Private functions ------------------------------------------

/// @function            __xstring_cleanup()
/// @description         Cleans up an xstring builder instance after an operation.
/// @param       {id} sb The string builder instance.
function __xstring_cleanup(sb) {
	
	__xstring_ensure_capacity(sb);

}

/// @function         __xstring_ensure_capacity(sb)
/// @description      Ensures that the text buffer of the string builder is at or below the specified capacity.
/// @param       {id} sb The string builder instance.
function __xstring_ensure_capacity(sb) {
	
	//Clamp to capacity
	if(string_length(sb.text) > sb.capacity) {
		sb.text = string_copy(sb.text, 0, sb.capacity);
		return false;
	}
	
	return true;
}

#endregion

#region Error macros -----------------------------------------------

#macro XSB_ERROR_BUILDER_MISUSE _xstring_builder_error_misuse()
function _xstring_builder_error_misuse() {
	show_error(
		"Error: xstring_builder function cannot be used without an instance.\n" + 
	    "Correction: Use <variable> = xstring_builder(), and call <variable>.sb_<function_name>().\n", 
		false
	);
}

#endregion

#region Function definitions ---------------------------------------

function xsb_get()                  { XSB_ERROR_BUILDER_MISUSE; }
function xsb_get_length()           { XSB_ERROR_BUILDER_MISUSE; }
function xsb_clear()                { XSB_ERROR_BUILDER_MISUSE; }
function xsb_append(str)            { XSB_ERROR_BUILDER_MISUSE; }
function xsb_append_line(str)       { XSB_ERROR_BUILDER_MISUSE; }
function xsb_set_capacity(capacity) { XSB_ERROR_BUILDER_MISUSE; }
function xsb_insert(index, substr)  { XSB_ERROR_BUILDER_MISUSE; }
function xsb_clone()                { XSB_ERROR_BUILDER_MISUSE; }

#endregion