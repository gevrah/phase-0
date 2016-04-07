// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
  bodyElement = $('body')
  headerElement = $('#welcome').css('background-color', "blue");
  headerElement = $('#welcome').css('visibility', "initial");
  headerElement = $('#welcome').css('border', "dotted");
//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  MascotName = $(".mascot h1").html("<h1>Fiery Skippers</h1>");

//RELEASE 4: Event Listener
  // Add the code for the event listener here
  // $('img').on('mouseover', function(e){
  //   e.preventDefault()
  //   $(this).attr('src', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/FierySkipper.JPG/300px-FierySkipper.JPG')
  // })
  
    $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })



//RELEASE 6: Experiment on your own

// clicking trickers function to move image right and make it fade, as well as change height and width.
$('img').click(function(){
    $('img').animate({
        left: '+=250px',
        opacity: '0.5',
        height: '150px',
        width: '150px'
    });
    // $('img').off('mouseover')
}); 

// Mouseleave resets the image left
$('img').mouseleave(function(){
    $('img').animate({
        left: '250px',
        opacity: '0.5',
        // visibility: hidden,
    });
}); 

// Tried a for loop in order to be very annoying and make the logo blink 10 times...
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/FierySkipper.JPG/300px-FierySkipper.JPG')
    for(var i = 1; i <10; i++){
      $('.mascot h1').fadeOut("fast").fadeIn("fast")
    }
  })

// http://www.w3schools.com/jquery/jquery_animate.asp
// http://www.w3schools.com/jquery/event_off.asp

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// // reflection:
// • What is jQuery?
// Jquery is a JavaScript library. It can be used to make websites more interactive by adding 
// functionality given certain triggers. It is open source and thus free.

// • What does jQuery do for you?
// Jquery can be used to modify the html and css of a website given a user interaction, so I could
 // use it on my own website to make the navbar menus on my website slide in and out when hovered
  // over. I may implement this.

// • What did you learn about the DOM while working on this challenge?
// I learned a shortcut method to interact with the Don, Jquery. I had never used it before, and it's
 // quite fun, and seems as if I'll be able to do a lot more than if I had attempted the same with
  // just raw JavaScript.