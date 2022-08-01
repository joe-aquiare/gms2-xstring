<p align="center">
  <img src="https://i.imgur.com/g5cLwKw.png">
</p>

<b>xstring</b> adds extended string functionality to Gamemaker Studio 2, making it easier to manage and manipulate strings inside your game. 

<h4>With traditional GML:</h4>

```c#
var str = "How much wood could a woodchuck chuck if a woodchuck could chuck wood?";
var substr = "chuck";

var str_original = str;
var index = -1;

//While string still contains substring...
while(string_pos(substr, str) != 0) {

  //Get new position and calculate original string index
  var pos = string_pos(substr, str);
  index = string_length(str_original) - string_length(str) + pos;

  //Resize original string to exclude found substring
  str = string_copy(str, pos + string_length(substr), string_length(str) - (pos + string_length(substr)) +  1);

}

return index;
```

<h4>With xstring:</h4>

```c#
var str = "How much wood could a woodchuck chuck if a woodchuck could chuck wood?";
var substr = "chuck";

//Get last index
return xstring_last_index_of(str, substr);
```
