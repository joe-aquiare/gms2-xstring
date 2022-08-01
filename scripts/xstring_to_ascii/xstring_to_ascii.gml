/// @function            xstring_to_ascii(char)
/// @description         Converts a string character to an ascii code (decimal).
/// @param {string} char The character to convert.

function xstring_to_ascii(char) {
	
	//Back out if string isn't a character
	if(string_length(char) > 1) {
		return -1;
	}
	
	//Return code for given character
	switch(char) {
		
		/* Escape characters */
		case("\b"): return 8; 
		case("\t"): return 9; 
		case("\n"): return 10;
		case("\v"): return 11;
		case("\f"): return 12;
		case("\r"): return 13;
		
		/* Punctuation */
		case(" "):  return 32;
		case("!"):  return 33;
		case("\""): return 34;
		case("#"):  return 35;
		case("$"):  return 36;
		case("%"):  return 37;
		case("&"):  return 38;
		case("'"):  return 39;
		case("("):  return 40;
		case(")"):  return 41;
		case("*"):  return 42;
		case("+"):  return 43;
		case(","):  return 44;
		case("-"):  return 45;
		case("."):  return 46;
		case("/"):  return 47;
		
		/* Numbers */
		case("0"): return 48;
		case("1"): return 49;
		case("2"): return 50;
		case("3"): return 51;
		case("4"): return 52;
		case("5"): return 53;
		case("6"): return 54;
		case("7"): return 55;
		case("8"): return 56;
		case("9"): return 57;
		
		/* Operators */
		case(":"): return 58;
		case(";"): return 59;
		case("<"): return 60;
		case("="): return 61;
		case(">"): return 62;
		case("?"): return 63;
		case("@"): return 64;
		
		/* Uppercase Letters */
		case("A"): return 65;
		case("B"): return 66;
		case("C"): return 67;
		case("D"): return 68;
		case("E"): return 69;
		case("F"): return 70;
		case("G"): return 71;
		case("H"): return 72;
		case("I"): return 73;
		case("J"): return 74;
		case("K"): return 75;
		case("L"): return 76;
		case("M"): return 77;
		case("N"): return 78;
		case("O"): return 79;
		case("P"): return 80;
		case("Q"): return 81;
		case("R"): return 82;
		case("S"): return 83;
		case("T"): return 84;
		case("U"): return 85;
		case("V"): return 86;
		case("W"): return 87;
		case("X"): return 88;
		case("Y"): return 89;
		case("Z"): return 90;
		
		/* Command Symbols */
		case("["):  return 91;
		case("\\"): return 92;
		case("]"):  return 93;
		case("^"):  return 94;
		case("_"):  return 95;
		case("`"):  return 96;
		
		/* Lowercase Letters */
		case("a"): return 97;	
		case("b"): return 98;	
		case("c"): return 99;	
		case("d"): return 100;	
		case("e"): return 101;	
		case("f"): return 102;	
		case("g"): return 103;	
		case("h"): return 104;	
		case("i"): return 105;	
		case("j"): return 106;	
		case("k"): return 107;	
		case("l"): return 108;	
		case("m"): return 109;	
		case("n"): return 110;	
		case("o"): return 111;	
		case("p"): return 112;	
		case("q"): return 113;	
		case("r"): return 114;	
		case("s"): return 115;	
		case("t"): return 116;	
		case("u"): return 117;	
		case("v"): return 118;	
		case("w"): return 119;	
		case("x"): return 120;	
		case("y"): return 121;	
		case("z"): return 122;	
		
		/* Brackets */
		case("{"): return 123;
		case("|"): return 124;
		case("}"): return 125;
		
		/* Misc */
		case("~"): return 126;
	}	
	
	/// Else, return -1
	return -1;
}