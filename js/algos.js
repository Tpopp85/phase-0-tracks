
var word_object = {}
var word_array = [];
//var animals_array = ["cat", "dog fish","fish", "apple"]
function letterCount (word) {
  word_object[word] = word.length;
  word_array.push([word,word.length]);
};
function phraseCount (animals_array) {
  for (var animal in animals_array) {
  letterCount (animals_array[animal])};
  word_array.sort( function(a,b){return b[1] - a[1]});
  console.log(word_array[0][0]);
}

//function to compare 2 objects
function compareObjects (obj1, obj2) {
  for (var property in obj1) {
      if (obj1[property] == obj2[property]){
        console.log(property + "=" + obj1[property])
      }
      else{
         // console.log("nothing")
      }
   };
};

//console.log(word_array)
//letterCount("hello")
//console.log(word_object)


//console.log(word_array[0][0])

//console.log(word_array)
//letterCount("hello")
//console.log(word_object)
phraseCount (["cat", "dog fish","fish", "apples",""])

var person1 = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54};

compareObjects(person1,person2)



