

var colors = ["blue", "white", "brown", "green"]
var horse_names = ["Ed", "Bob", "Joe", "John"]

colors.push("silver")
horse_names.push("Linda")

console.log(colors)
console.log(horse_names)

//names equal keys and colors equal values
//

var horses = {}
for (var i=0; i<horse_names.length ; i++ ){
  horses[horse_names[i]] = colors[i]; 
}
console.log(horses)

function Car(color, model, year) {
  this.color = color;
  this.model = model;
  this.year = year;
  this.start = function() {
    console.log("Vrooomm!");
  };
}
 var newcar = new Car("red", "Mustang", "2016")
 console.log(newcar)
 newcar.start()
 
 var newcar2 = new Car ("blue", "BMw", "2003")
 console.log(newcar2)
 newcar2.start()

  console.log(newcar2)
//  for (var key in p) {
//     console.log(key + ' => ' + p[key]);
//     // key is key
//     // value is p[key]
// }
 for (var key in newcar2) {
   console.log("The " + key + " has this value "+ newcar2[key]);
   
 }