/// @function    xstring_builder()
/// @description Returns a string builder object.
function xstring_builder() {
	
	//Return string builder object
	return {

		#region Properties
		
		text: "", //Text component
		capacity: 2147483647, //Max length for text component (Do not modify directly)
		
		#endregion
		
		#region Functions
		
		//Gets the text component of the string builder
		sb_get: function() {
			return self.text;	
		},
		
		//Get text buffer length
		sb_get_length: function() { 
			return string_length(self.text);
		}, 
		
		//Clears the current text buffer
		sb_clear: function() {
			self.text = "";	
		},
		
		//Appends another string to the end of the current text buffer
		sb_append: function(str) {
			self.text += str;
			__xstring_cleanup(self);
		},
		
		//Appends another string to the end of the current text buffer
		sb_append_line: function(str) {
			self.text += "\n" + str;
			__xstring_cleanup(self);
		},
		
		//Clears the current text buffer
		sb_set_capacity: function(capacity) {
			self.capacity = capacity;
			__xstring_cleanup(self);
		},
		
		//Inserts a substring into the text buffer
		sb_insert: function(index, substr) {
			self.str = string_insert(str, self.text, index);
			__xstring_cleanup(self);
		}
		
		#endregion
		
	};
	
}

#region Private functions ------------------------------------------

function __xstring_cleanup(sb) {
	
	__xstring_ensure_capacity(sb);

}

function __xstring_ensure_capacity(sb) {
	
	//Clamp to capacity
	if(string_length(sb.text) > sb.capacity) {
		sb.text = string_copy(sb.text, 0, sb.capacity);	
	}
}

#endregion

#region Error macros -----------------------------------------------

#macro XERROR_BUILDER_MISUSE _xstring_builder_error_misuse()
function _xstring_builder_error_misuse() {
	show_error("Error: xstring_builder function cannot be called without a string builder instance. Use xstring_builder().", false);
}

#endregion

#region Function definitions ---------------------------------------

function sb_get()                  { XERROR_BUILDER_MISUSE; }
function sb_get_length()           { XERROR_BUILDER_MISUSE; }
function sb_clear()                { XERROR_BUILDER_MISUSE; }
function sb_append(str)            { XERROR_BUILDER_MISUSE; }
function sb_append_line(str)       { XERROR_BUILDER_MISUSE; }
function sb_set_capacity(capacity) { XERROR_BUILDER_MISUSE; }
function sb_insert(index, substr)  { XERROR_BUILDER_MISUSE; }

#endregion