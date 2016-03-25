 // JavaScript Olympics

// I paired [by myself, with: Dominick Lombardo] on this challenge.

// This challenge took me [2] hours.


// Warm Up


// Bulk Up
var athleteArray = [
    {name: "Sarah Hughes",
     event: "Ladie's Singles",},
    {name: "Michael Johnson",
     event: "Sprinter",},
]

function addWin(athleteArray){
// for (i = 0; i < athleteArray.length; i++){
// above line achieves same result as below
  for (var index in athleteArray) {
      var athlete = athleteArray[index].name
      var event = athleteArray[index].event
      console.log(athlete + " won the " + event)
// for (var athlete in athleteArray) {
//   var key = athlete;
//   var value = athleteArray[key];
//   console.log(value);
}
}

addWin(athleteArray)

// Jumble your words

var stringToReverse = "!sdrow ruoy elbmuJ"

function reverse(string) {
  var array = string.split("");
  array.reverse();
  var reversedArray = array.join("");
  return reversedArray;
}

console.log(reverse(stringToReverse))



// 2,4,6,8

function returnEven(numbers){
  answerArray = [];
  for (var i in numbers){
    if (numbers[i] %2 == 0) {
      answerArray.push(numbers[i]);
    };
  };
  console.log(answerArray);
};

var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
returnEven(numbers)




// "We built this city"

function Athlete(name, age, sport, quote){
  
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
    
    this.whatAmI = function(){
        console.log(this.sport);
    };
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
michaelPhelps.whatAmI()

// Reflection

// • What JavaScript knowledge did you solidify in this challenge?
//   I'm starting to get more comfortable writing functions within Ruby. 
//   This challenge also gave me a better feel for Javascript's syntax.

// • What are constructor functions?
//   Similar to Ruby class initialization, constructor functions initialize
//    and give properties to objects in Javascript. 

// • How are constructors different from Ruby classes (in your research)?
//   •Javascript does not actually have classes, but it has prototypes. 
//    When an object is created in Ruby, the behavior of that object is both
//    created and defined by the Ruby class. Unlike Ruby, Javascript has two
//    parts that interact to create Ruby class-like objects, the constructor
//    and the prototype. Constructors only manufacture new objects, but they
//    do not define the behavior of the new object. In Javascript, the prototype
//    is the part that does this.
//   • Good source: http://raganwald.com/2014/01/19/prototypes-are-not-classes.html
