/// @function             xstring_to_ascii(char)
/// @description          Converts a string character to an ascii code (decimal).
/// @param {string} str   The string to check against.
/// @param {string} delim The delimeter to use.

function xstring_to_ascii(char) {
	
	//Return code for given character
	switch(char) {
		
		/* Escape characters */
		case("\b"): return 8;   break;
		case("\t"): return 9;   break;
		case("\n"): return 10;  break;
		case("\v"): return 11;  break;
		case("\f"): return 12;  break;
		case("\r"): return 13;  break;
		
		/* Punctuation */
		case(" " ): return 32;  break;
		case("!" ): return 33;  break;
		case("\""): return 34;  break;
		case("#" ): return 35;	break;
		case("$" ): return 36;	break;
		case("%" ): return 37;	break;
		case("&" ): return 38;	break;
		case("'" ): return 39;	break;
		case("(" ): return 40;	break;
		case(")" ): return 41;	break;
		case("*" ): return 42;	break;
		case("+" ): return 43;	break;
		case("," ): return 44;	break;
		case("-" ): return 45;	break;
		case("." ): return 46;	break;
		case("/" ): return 47;	break;
		
		/* Numbers */
		case("0" ): return 48;	break;
		case("1" ): return 49;	break;
		case("2" ): return 50;	break;
		case("3" ): return 51;	break;
		case("4" ): return 52;	break;
		case("5" ): return 53;	break;
		case("6" ): return 54;	break;
		case("7" ): return 55;	break;
		case("8" ): return 56;	break;
		case("9" ): return 57;	break;
		
		/* Operators */
		case(":" ): return 58;	break;
		case(";" ): return 59;	break;
		case("<" ): return 60;	break;
		case("=" ): return 61;	break;
		case(">" ): return 62;	break;
		case("?" ): return 63;	break;
		case("@" ): return 64;	break;
		
		/* Uppercase Letters */
		case("A" ): return 65;	break;
		case("B" ): return 66;	break;
		case("C" ): return 67;	break;
		case("D" ): return 68;	break;
		case("E" ): return 69;	break;
		case("F" ): return 70;	break;
		case("G" ): return 71;	break;
		case("H" ): return 72;	break;
		case("I" ): return 73;	break;
		case("J" ): return 74;	break;
		case("K" ): return 75;	break;
		case("L" ): return 76;	break;
		case("M" ): return 77;	break;
		case("N" ): return 78;	break;
		case("O" ): return 79;	break;
		case("P" ): return 80;	break;
		case("Q" ): return 81;	break;
		case("R" ): return 82;	break;
		case("S" ): return 83;	break;
		case("T" ): return 84;	break;
		case("U" ): return 85;	break;
		case("V" ): return 86;	break;
		case("W" ): return 87;	break;
		case("X" ): return 88;	break;
		case("Y" ): return 89;	break;
		case("Z" ): return 90;	break;
		
		/* Command Symbols */
		case("[" ): return 91;	break;
		case("\\"): return 92;	break;
		case("]" ): return 93;	break;
		case("^" ): return 94;	break;
		case("_" ): return 95;	break;
		case("`" ): return 96;	break;
		
		/* Lowercase Letters */
		case("a" ): return 97;	break;
		case("b" ): return 98;	break;
		case("c" ): return 99;	break;
		case("d" ): return 100;	break;
		case("e" ): return 101;	break;
		case("f" ): return 102;	break;
		case("g" ): return 103;	break;
		case("h" ): return 104;	break;
		case("i" ): return 105;	break;
		case("j" ): return 106;	break;
		case("k" ): return 107;	break;
		case("l" ): return 108;	break;
		case("m" ): return 109;	break;
		case("n" ): return 110;	break;
		case("o" ): return 111;	break;
		case("p" ): return 112;	break;
		case("q" ): return 113;	break;
		case("r" ): return 114;	break;
		case("s" ): return 115;	break;
		case("t" ): return 116;	break;
		case("u" ): return 117;	break;
		case("v" ): return 118;	break;
		case("w" ): return 119;	break;
		case("x" ): return 120;	break;
		case("y" ): return 121;	break;
		case("z" ): return 122;	break;
		
		/* Brackets */
		case("{" ): return 123;	break;
		case("|" ): return 124;	break;
		case("}" ): return 125;	break;
		
		/* Misc */
		case("~" ): return 126;	break;
	}	
	
	/// Else, return -1
	return -1;
}