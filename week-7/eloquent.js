// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var first_name = "Gabriel";
var last_name = "Zurita";
console.log(first_name + last_name);

var user_food = prompt("What's your favorite food?", "");
alert("Hey! That's my favroite, too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var triangle = "#"; triangle.length < 8; triangle = triangle + "#")
  console.log(triangle);


// Functions


// Complete the `minimum` exercise.
function minimum(a, b) {
  if (a < b)
    return a;
  else
    return b;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Gabriel",
	age: 31,
	favroiteFoods: ["Korean", "Japanese", "Chilean", "Middle Eastern"],
	quirk: "I love to snowboard",
};

console.log(me)