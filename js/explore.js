//start at the end of the string and iterate backwards over the string.  Add each character to a new string and return that string value

var string = "hello"
var new_string = ""

function reverse(string) {
  for (var i = string.length-1; i >= 0; i--){
    new_string = new_string + string[i];
  }
  return new_string;
}

var user_input = "Howdy"
if (user_input.length > 0){
  console.log(reverse(user_input));
}
else {
  console.log("You didn't enter anything")}
