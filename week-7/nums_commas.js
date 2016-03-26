// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode

// Pseudocode
//Input: an integer

//Steps to solve:
//Step 1.1: Convert the integer to a string
//Step 1.2: Split the string so that each digit is its own string
//Step 2.1: Count from left to right. Add a comma if more than 3 digits.
//Step 2.2: Join the characters and print it with console.log

//Output: String of numbers with commas in the correct places.




// Initial Solution
function commas (num){
var stringSplit = num.toString().split("");
var index = -3;
 while (stringSplit.length + index > 0){
   (stringSplit.splice(index, 0, ','));
   index -=4;
 }
 console.log( stringSplit.join(''));
}

commas(900);

// Refactored Solution

function addComma (num){ 
	var comma = num.toLocaleString();
console.log(comma);
}

addComma(1000);

// Your Own Tests (OPTIONAL)




// Reflection
// • What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// 	• We attempted to approach the problem in the same way that we approached the Ruby version, though we ended up going 
// 	a slightly different route.

// • What did you learn about iterating over arrays in JavaScript?
// 	• Since iterating over arrays in Javascript is similar to doing the same in Ruby, I mostly only learned syntax.

// • What was different about solving this problem in JavaScript?
// 	• The syntax is quite different, but the logic is similar. Albiet, this problem felt significantly easier to solve 
// 	in Javascript than Ruby. I'm not sure if it's because I'm getting more and more practice or if it's because Javascript
// 	 is easier to code in than Ruby. It may also be because I had already solved this same problem in Ruby, and the logic
// 	  was similar in Javascript.

// • What built-in methods did you find to incorporate in your refactored solution?
// We used .toLocaleString and solved the problem in one line. It simply formatted the integer to add commas to it. This was 
// much easier than with Ruby.

