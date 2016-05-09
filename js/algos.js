
var word_array = [];

//function letterCount (word) {
  
//}
function phraseCount (input_array) {
  var word_array = [];
    for (var phrase in input_array) {
      var phrase_value = input_array[phrase]
      word_array.push([phrase_value, phrase_value.length]);
    };
  word_array.sort( function(a,b){return b[1] - a[1]})
  console.log(word_array[0][0]);
};

//function to compare 2 objects
function compareObjects (obj1, obj2) {
  for (var property in obj1) {
    if (obj1[property] == obj2[property]){
      //console.log(property + "=" + obj1[property])
      return true
    }
    else{

    }
  };
  return false
};

// Function to generate an array with different elements of varying length
function array_generator (array_length) {
  var source = "alkjasdflkjadfa";
  var new_array = [];
  for (var i=0; i<array_length; i++){
    var random = Math.floor((Math.random()*10)+1);
    new_array.push(source.substring(0, random));
  };
  return new_array
};



// Should return dog fish
phraseCount (["cat", "dog fish","fish", "apples",""])
// Should return Cleveland
phraseCount(["max", "keith", "Tommy", "Cleveland"])

// Objects to compare
var person1 = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54};

// Should return true
console.log(compareObjects(person1,person2))

// Creates 10 arrays of varying length and prints the longest phrase in each
for (var i=0; i<10; i++){
  var random = Math.floor((Math.random()*10)+1);
  phraseCount(array_generator(random));
}
