// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// Pseudocode:

// Input: A list (string) of grocery items separated by spaces (example: "carrots apples cereal pizza")

// Steps: 
// 1. Create list 
// 2. Add item with quanity to the list
// 3. Remove an item from the list
// 4. Update quantities for items in the list

// Output: Updated, pretty list

// Solution:

// Function to create array of grocery items then create objects with quantities of 1 based on array:

var groceryList = new Object();
groceryList = {"carrots": 1, "apples": 2, "cereal": 3};

// function groceryList(string) {
// 	var stringToArray = string.split(" ")
// 	groceryList  = {};
// 	for (var i = 0; i < stringToArray.length; i++) {
// 	    groceryList[stringToArray[i]] = 1;
// 	}
// 	return groceryList
// }


function addGroceryItem(list, item, quanity) {
	groceryList[item] = quanity;
}
addGroceryItem(groceryList, "orange", 5)

function removeGroceryItem(list, item) {
	delete list[item];
}
removeGroceryItem(groceryList, "carrots")

function updateGroceryItem(list, item, quantity) {
	groceryList[item] = quantity;
}
updateGroceryItem(groceryList, "apples", 100)


function outputPrettyList(list) {
	console.log("Grocery List:")
		for (var item in list) {
			console.log("* " + item + " X " + list[item])
		}
}

// var list = groceryList("carrots apples cereal pizza")
outputPrettyList(groceryList)

// • What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I solidified passing information to objects.

// • What was the most difficult part of this challenge?
// I attempted to replicate the ruby GPS verbatim and tried to start from a string of items, then convert it to an object and add items to it. I attempted this method:
// http://stackoverflow.com/questions/3797951/how-do-i-create-a-hash-from-an-array-using-the-prototype-javascript-framewor

// For some reason, I could not get it to work! I left my attempted code on there. 

// • Did an array or object make more sense to use and why?
// Had to use an object in order to be able to have quantities associated with items in the list.
	

