// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

//test 1
// Input: votes cast per position object
// Steps:
//   1.0 Create a function that accepts an object with votes cast as an argument.
//   1.1 This votes object contains "voterName" properties that contain another property of values of votes cast.
//   1.2 Iterate through each voterName property in order to access the values of the president property
//   1.3 If that value doesn't exist within voteCount.president then push the value of the president property into voteCount.president and set the value of the property to 1.
//   1.4 If the value of the president property already exists, then increase the value inside voteCount.president by 1.
// Output: Bob should receive three votes for President.

//test 2-4
// copy and paste function and change values

//test 5
//Input: voteCount object containing amounts of votes cast per candidate
//Output: define the elected officer for each position
// steps 
//   1.0 Create a function that accepts voteCount as an arugment
//   1.1 set a variable that keeps track of the highest vote count, highestVote
//   1.2 set a variable that holds the candidate's name with the highest vote count, winner
//   1.3 Iterate through each OfficeName property in order to access the values of the candidates and their votes
//   1.4 IF the candidate's vote count property is greater than highestVote, then set the winner variable equal to their name
//   1.5 After iterating thru voteCount object, set the office holder equal to the winner

// __________________________________________
// Initial Solution


// // test 1 - count prez votes
// function PresVoteCounter (votesTallied) {
//   for (var voterName in votesTallied) {
//     var candidate = votesTallied[voterName]["president"]
//       if (voteCount.president.hasOwnProperty(candidate)) {
//         voteCount["president"][candidate] += 1 
//       } else {
//           voteCount["president"][candidate] = 1 };
//   };

// }

// PresVoteCounter(votes)

// // test 2 - count VP votes
// function vpVoteCounter (votesTallied) {
//   for (var voterName in votesTallied) {
//     var candidate = votesTallied[voterName]["vicePresident"]
//       if (voteCount.vicePresident.hasOwnProperty(candidate)) {
//         voteCount["vicePresident"][candidate] += 1 
//       } else {
//           voteCount["vicePresident"][candidate] = 1 };
//   };

// }

// vpVoteCounter(votes)

// // test 3 - count Secretary votes
// function secretaryVoteCounter (votesTallied) {
//   for (var voterName in votesTallied) {
//     var candidate = votesTallied[voterName]["secretary"]
//       if (voteCount.secretary.hasOwnProperty(candidate)) {
//         voteCount["secretary"][candidate] += 1 
//       } else {
//           voteCount["secretary"][candidate] = 1 };
//   };

// }

// secretaryVoteCounter(votes)


// // test 4 - count Treasurer votes
// function treasurerVoteCounter (votesTallied) {
//   for (var voterName in votesTallied) {
//     var candidate = votesTallied[voterName]["treasurer"]
//       if (voteCount.treasurer.hasOwnProperty(candidate)) {
//         voteCount["treasurer"][candidate] += 1 
//       } else {
//           voteCount["treasurer"][candidate] = 1 };
//   };

// }

// treasurerVoteCounter(votes)


// // test 5 - set president

// //   1.0 Create a function that accepts voteCount as an arugment
// //   1.1 set a variable that keeps track of the highest vote count, highestVote
// //   1.2 set a variable that holds the candidate's name with the highest vote count, winner
// //   1.3 Iterate through each OfficeName property in order to access the values of the candidates and their votes
// //   1.4 IF the candidate's vote count property is greater than highestVote, then set the winner variable equal to their name
// //   1.5 After iterating thru voteCount object, set the office holder equal to the winner

// // Test 5: output winnder of president office
// function presidentOfficeWinner(voteCount) {
//   var highestVote = 0;
//   var winner = "";
//   var officeVoteTally = voteCount["president"];
//   for (var candidate in officeVoteTally) {
//       var voteCount = officeVoteTally[candidate];
//       if (voteCount > highestVote) {
//         highestVote = voteCount;
//         winner = candidate;
//       }
//   }
//   officers.president = winner;
// }

// presidentOfficeWinner(voteCount)

// // Test 6: output winner of vice president office
// function vicePresidentOfficeWinner(voteCount) {
//   var highestVote = 0;
//   var winner = "";
//   var officeVoteTally = voteCount["vicePresident"];
//   for (var candidate in officeVoteTally) {
//       var voteCount = officeVoteTally[candidate];
//       if (voteCount > highestVote) {
//         highestVote = voteCount;
//         winner = candidate;
//       }
//   }
//   officers.vicePresident = winner;
// }

// vicePresidentOfficeWinner(voteCount)

// // Test 7: output winner of secretary office
// function secretaryOfficeWinner(voteCount) {
//   var highestVote = 0;
//   var winner = "";
//   var officeVoteTally = voteCount["secretary"];
//   for (var candidate in officeVoteTally) {
//       var voteCount = officeVoteTally[candidate];
//       if (voteCount > highestVote) {
//         highestVote = voteCount;
//         winner = candidate;
//       }
//   }
//   officers.secretary = winner;
// }

// secretaryOfficeWinner(voteCount)

// // Test 8: output winner of treasurer
// function treasurerOfficeWinner(voteCount) {
//   var highestVote = 0;
//   var winner = "";
//   var officeVoteTally = voteCount["treasurer"];
//   for (var candidate in officeVoteTally) {
//       var voteCount = officeVoteTally[candidate];
//       if (voteCount > highestVote) {
//         highestVote = voteCount;
//         winner = candidate;
//       }
//   }
//   officers.treasurer = winner;
// }

// treasurerOfficeWinner(voteCount)



// __________________________________________
// Refactored Solution

// test 1 through 4 - count each office votes
function voteCounter (votesTallied) {
    
    for (var officeName in voteCount) {
      for (var voterName in votesTallied) {
        var candidate = votesTallied[voterName][officeName]
          if (voteCount[officeName].hasOwnProperty(candidate)) {
            voteCount[officeName][candidate] += 1 
          } else {
              voteCount[officeName][candidate] = 1 };
      };
    }   

}

voteCounter(votes)

// Test 5 through 8: output winner of each office
function officeWinner(electionResults) {
  for (var officeName in electionResults) {
        var highestVote = 0;
        var winner = "";
        var officeVoteTally = electionResults[officeName];
        for (var candidate in officeVoteTally) {
            var voteCount = officeVoteTally[candidate];
            if (voteCount > highestVote) {
              highestVote = voteCount;
              winner = candidate;
            }
        }
        officers[officeName] = winner;
    }
}

officeWinner(voteCount);





// __________________________________________
// • What did you learn about iterating over nested objects in JavaScript?
// • We learned that .push does not work for arrays. We also learned how to change parameters 
// within nested arrays using conditional statements within for … in loops.
// • Were you able to find useful methods to help you with this?
// • We did not find any new, useful methods.
// • What concepts were solidified in the process of working through this challenge?
// • We were able to deepen our understand of the use of for … in loops in order to iterate over nested arrays. 





// __________________________________________
// Test Code:  Do not alter code below this line.



function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
