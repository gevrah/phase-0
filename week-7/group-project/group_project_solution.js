
// Person 1: Test to User Stories

// As a user, I'm in need of three functions that determine the sum, mean, and median of the numbers from two lists. 
// One list will be of odd length and one will be of even length.

// 	1. Sum Function:
// 		a. Inputting a list of numbers of odd length into this function will return a sum of all values from this list.
// 		b. Inputting a list of numbers of even length into this same function will also return a sum of all values from this list.
// 	2. Mean Function:
// 		a. Inputting a list of numbers of odd length will return the mean/average of the numbers in this list.
// 		b. Inputting a list of numbers of even length will return the mean/average of the numbers in this list.
// 	3. Median Function:
// 		a. Inputting a list of numbers of odd length will return the median value of the numbers in this list.
// 		b. Inputting a list of numbers of even length will return the median value of the numbers in this list.

// Person 2: Pseudocode


// Sum Function takes one array as an argument
// ADDS up all the values at EACH index into a result variable
// RETURNS result

// Mean Function takes one array as an argument
// create a result variable 
// ADD up EACH number in the array in the result variable
// return the result divided by the length of the argument passed in

// Median Function will take one array as an argument
// IF argument.length is NOT DIVISIBLE by 2 
// return the middle index of the array  (can use argument.length-1 / 2 to get the middle index count)
// ELSE get the middle two index's of the array
// find the mean between those two values and RETURN the mean between them

// Person 3: Solution

//Sum Function: 
var sum = function(array) {
    for (var i = 0, sum = 0; i < array.length; sum += array[i++]);
    return (sum);
   
  };


//Mean Function: 
var mean = function(array) {
    for (var i = 0, sum = 0; i < array.length; sum += array[i++]);
    return (sum/array.length);

  };

//Median Function: 
var median = function(array) {
    for (var i = 0; i < array.length; i++);
       if (array.length % 2 !== 0){
          return array[(array.length-1)/2] 
       }
      else {
         var x = array[((array.length-1)/2)+.5] 
         var y = array [((array.length-1)/2)-.5]
         return (x+y)/2
      } 
     
  };

Person 1: Run tests

I pasted the functions to the tests.js file and ran the tests, whI pasted the functions to the tests.js file and ran the tests and they were all successful. Good job all!ich were all successful. Good job all!


