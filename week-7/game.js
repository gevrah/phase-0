// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Defeat Captain Hammer!
// Goals:
// Survive your opponents attacks and don't harm any bystanders!
// Characters:
// a. Captain Hammer: A superhero. High Attack, High HPS.
// b. Dr. Horrible:   A mere human. No Attack, Low HPS; Can use weapons to damage Captain Hammer.
// c. Penny: 		  A mere human. No Attack, Low HPS; An innocent bystander, Captain Hammer's lover, and Dr. Horrible's crush.

// Objects:
// a. Freeze Ray: Will freeze Captain Hammer until he reaches half his hps, at which point Captain Hammer goes Berserk!
// b. Death Ray: Would kill any mere human in one hit, but it takes 4 hits to kill Captain Hammer!

// Functions:
// Freeze Captain Hammer with the Freeze Ray
// Shoot Captain Hammer with Death Ray

// Pseudocode
// 1. Describe the setting.
// 2. Create three characters.
// a. Captain Hammer: High Attack, High HPS.
// b. Dr. Horrible:   No Attack, Low HPS; Can use Weapons to damage Captain Hammer.
// c. Penny: 		  No Attack, Low HPS. An innocent bystander.

// 3. Choose a method of attack against Captain Hammer

// 4. Attack Captain Hammer with random chance of hurting Penny

// 5. 3 possible outcomes:
// a. Captain Hammer and no one else dies
// b. Dr. Horrible dies and no one else dies
// c. Captain Hammer dies and Penny dies

// 6. Show results in console

// // Initial Code

// var drHorrible = {
// 	name: "Dr. Horrible",
// 	hps: 50,
// 	dead: false,
// }

// var captainHammer = {
// 	name: "Captain Hammer",
// 	attack: 15,
// 	hps: 100,
// 	frozen: false,
// 	dead: false,
// }

// var penny = {
// 	name: "Penny",
// 	hps: 10,
// 	dead: false,
// };


// console.log("The city is abuzz with praise for Captain Hammer's successfull campagin against homelessness. We're at the unveiling of a statue to honor Captain Hammer's achievements, with his lover and your crush Penny there to witness it. Captain Hammer is on the stage giving a speech. End his narcisistic charade once and for all: use your Death Ray [type: deathRay() into console] or your Freeze Ray [type: freezeRay()] on him!")



// var deathRay = function() {

// 	var shoot = Math.random()
// 	if (shoot >= .5 && drHorrible.hps > 0 && captainHammer.hps > 0) {
// 		captainHammer.hps -= 25
// 		console.log("Captain Hammer has taken a direct hit and has " + captainHammer.hps + " hit points left!")			
// 	}
// 	else if (captainHammer.frozen === true && captainHammer.hps <= 51 && captainHammer.hps > 0 && drHorrible.hps > 0) {
// 		captainHammer.frozen = false
// 		captainHammer.attack += 20
// 		console.log("The Death Ray has unfrozen Captain Hammer. Watch out, he's coming for you and he's angrier than ever!")
// 	}
// 	else if (shoot < .25 && penny.hps > 0 && captainHammer.hps > 0 && drHorrible.hps > 0) {
// 		penny.hps -= 25
// 		console.log("Oh no! You've hit and killed the love of your twisted mind, Penny!")
// 	}
// 	else if (shoot < .5 && captainHammer.frozen === false && drHorrible.hps > 0 && captainHammer.hps > 0) {
// 		drHorrible.hps -= captainHammer.attack
// 		console.log("Captain Hammer is too fast! He's avoided your Deathray blast and punched you accross the room! You've got " + drHorrible.hps + " hit points left.")
// 	}

// 	if(drHorrible.hps <= 0){
// 		console.log("Captain Hammer has finally put you out of your missery and can continue to rid the city of its suffering.")
// 	}

// 	else if(captainHammer.hps <= 0 && penny.hps > 0){
// 		console.log("Your victory is complete: Captain Hammer is dead! Hail to the new king of L.A.!")
// 	}

// 	else if(captainHammer.hps <= 0 && penny.hps <= 0){
// 		console.log("Your pyrrhic victory is complete: Captain Hammer is dead, though so is any chance you had at love! It's gonna be a lonely reign")
// 	}

// };

// var freezeRay = function() {

// 	var freeze = Math.random()
// 	if (freeze > .25) {
// 		captainHammer.frozen = true,
// 		console.log("You've frozen Captain Hammer! Use your Death Ray by typing deathRay()!")		
// 	}

// 	else {
// 		drHorrible.hps -= 10
// 		console.log("Captain Hammer saw your attack coming and avoided it with his lightning reflexes! Keep trying to freeze him [freezeRay()] or try to kill him with your Death Ray [deathRay()]!")
// 	}

// };



// prompt("Choose your attack!", );

// freezeRay();
// deathRay();
// deathRay();
// deathRay();
// deathRay();
// deathRay();
// deathRay();
// deathRay();
// deathRay();
// deathRay();
// deathRay();
// deathRay();




// Refactored Code:

// Character 1:
var drHorrible = {
	name: "Dr. Horrible",
	hps: 50,
	dead: false,
}

// Character 2:
var captainHammer = {
	name: "Captain Hammer",
	attack: 15,
	hps: 100,
	frozen: false,
	dead: false,
}

// Character 3:
var penny = {
	name: "Penny",
	hps: 10,
	dead: false,
};

// Initialize game:
console.log("..........................");
console.log("**The city is abuzz with praise for Captain Hammer's successfull campagin against homelessness. We're at the unveiling of a statue to honor Captain Hammer's achievements, with his lover and your crush Penny there to witness it. Captain Hammer is on the stage giving a speech. End his narcisistic charade once and for all: use your Death Ray [type: deathRay() into console] or your Freeze Ray [type: freezeRay()] on him!**");
console.log("..........................");

// Death Ray Attack:
var deathRay = function() {

	var shoot = Math.random()
	if (shoot >= .5 && drHorrible.hps > 0 && captainHammer.hps > 0) {
		captainHammer.hps -= 25
		console.log("** Captain Hammer has taken a direct hit and has " + captainHammer.hps + " hit points left!")			
		console.log("..........................");
	}
	else if (captainHammer.frozen === true && captainHammer.hps <= 51 && captainHammer.hps > 0 && drHorrible.hps > 0) {
		captainHammer.frozen = false
		captainHammer.attack += 20
		console.log("** The Death Ray has unfrozen Captain Hammer. Watch out, he's coming for you and he's angrier than ever!")
		console.log("..........................");
	}
	else if (shoot < .25 && penny.hps > 0 && captainHammer.hps > 0 && drHorrible.hps > 0) {
		penny.hps -= 25
		console.log("** Oh no! You've hit and killed the love of your twisted mind, Penny!")
		console.log("..........................");
	}
	else if (shoot < .5 && captainHammer.frozen === false && drHorrible.hps > 0 && captainHammer.hps > 0) {
		drHorrible.hps -= captainHammer.attack
		console.log("** Captain Hammer is too fast! He's avoided your Deathray blast and punched you accross the room! You've got " + drHorrible.hps + " hit points left.")
		console.log("..........................");
	}

	if(drHorrible.hps <= 0){
		console.log("Captain Hammer has finally put you out of your missery and can continue to rid the city of its suffering.");
		console.log("-----Game over!-----");
		console.log(reset ());
		console.log("..........................");
		console.log("........Restarting........");
		console.log("..........................");
		console.log("The city is abuzz with praise for Captain Hammer's successfull campagin against homelessness. We're at the unveiling of a statue to honor Captain Hammer's achievements, with his lover and your crush Penny there to witness it. Captain Hammer is on the stage giving a speech. End his narcisistic charade once and for all: use your Death Ray [type: deathRay() into console] or your Freeze Ray [type: freezeRay()] on him!");	
		console.log("..........................");
	}

	else if(captainHammer.hps <= 0 && penny.hps > 0){
		console.log("Your victory is complete: Captain Hammer is dead! Hail to the new king of L.A.!");
		console.log("-----Game over!-----");
		console.log(reset ());
		console.log("..........................");
		console.log("........Restarting........");
		console.log("..........................");
		console.log("The city is abuzz with praise for Captain Hammer's successfull campagin against homelessness. We're at the unveiling of a statue to honor Captain Hammer's achievements, with his lover and your crush Penny there to witness it. Captain Hammer is on the stage giving a speech. End his narcisistic charade once and for all: use your Death Ray [type: deathRay() into console] or your Freeze Ray [type: freezeRay()] on him!");	
		console.log("..........................");
	}

	else if(captainHammer.hps <= 0 && penny.hps <= 0){
		console.log("Your pyrrhic victory is complete: Captain Hammer is dead, though so is any chance you had at love! It's gonna be a lonely reign");
		console.log("-----Game over!-----");
		console.log(reset ());
		console.log("..........................");
		console.log("........Restarting........");
		console.log("..........................");
		console.log("**The city is abuzz with praise for Captain Hammer's successfull campagin against homelessness. We're at the unveiling of a statue to honor Captain Hammer's achievements, with his lover and your crush Penny there to witness it. Captain Hammer is on the stage giving a speech. End his narcisistic charade once and for all: use your Death Ray [type: deathRay() into console] or your Freeze Ray [type: freezeRay()] on him!**");
		console.log("..........................");
	}

};

// Freeze Ray Attack:
var freezeRay = function() {

	var freeze = Math.random()
	if (freeze > .25) {
		captainHammer.frozen = true,
		console.log("You've frozen Captain Hammer! Use your Death Ray by typing deathRay()!");	
		console.log("..........................");
	}

	else {
		drHorrible.hps -= 10
		console.log("Captain Hammer saw your attack coming and avoided it with his lightning reflexes! Keep trying to freeze him [freezeRay()] or try to kill him with your Death Ray [deathRay()]!");
		console.log("..........................");
	}

};

// Reset the game:
function reset() {
	drHorrible.hps = 50
	captainHammer.hps = 100
	captainHammer.attack = 15
	penny.hps = 10
	return 
};

freezeRay();
deathRay();
deathRay();
deathRay();
deathRay();
deathRay();
deathRay();
deathRay();
deathRay();
deathRay();
deathRay();
deathRay();




// Reflection
// • What was the most difficult part of this challenge?
// 	• Trying to come up with a game idea took me longer than I thought it would. 
// 	Once I had figured out that I wanted to create a playable version of the last 
// 	scene in Dr. Horrible's Singalong Blog, it took me quite awhile to try to 
// 	figure out what possible actions the characters could take, and the possible outcomes.

// • What did you learn about creating objects and functions that interact with one another?
// 	• I learned that it's possible to make objects interact in very entertaining ways, such
// 	 as basically creating a DnD game. The fun of it made me a lot more comfortable with manipulating objects.

// • Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// 	• I didn't learn any new built-in methods in my refactored solution, but I did figure out how to create a function to reset the 
// 	game. I also made the code prettier, and added some comments.
// 	• I wanted to make it possible to play the game on the a browser, but I ran out of time before I could figure out how to implement that.
// 	• I also wanted to add a run away mechanism for the game in which Dr. Horrible could choose to run instead of to attack, but I ran out of
// 	 time for that as well.

// • How can you access and manipulate properties of objects?
// It's possible to access and manipulate properties of objects by using dot notation. 
// For example, if I wanted to access the hitpoints property of an object called character, I'd type character.hitpoints. 
// If I wanted to change the value of character.hitpoints to 100, I'd type character.hitpoints = 100.
