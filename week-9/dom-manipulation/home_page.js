// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:




// Release 1:

document.getElementById("release-0").className = "done";




// Release 2:
document.getElementById("release-1").style.display = "none";



// Release 3:

document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";
// Release 4:

var rel4 = document.getElementById("release-3");
rel4.style.backgroundColor = "#955251";

// Release 5:

var class = document.getElementsByClassName("release-4");
for (var i = 0; i < class.length; i++) {
  var instance = class[i];
instance.style.fontSize = "2em";
}

Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

//Reflection
/*
What did you learn about the DOM?
This was really my first time learning about the DOM and it seems like a cool tool for building dynamic web pages.  The Document Object Model is basically a way for Javascript to select HTML tags as objects and manipulate them, for example, by writing a timed/button function that changes components of the page after something is clicked and/or a certain period of time.  This was a very introductory lesson but, despite being frustrating, got me excited about learning abotu how to use it better.  I guess this is one of the main reasons we've been learning JS in the first place.

What are some useful methods to use to manipulate the DOM?
Well, it certainly seems useful to know how to iterate through a loop in JS, though to do this you first need to know the appropriate accessor methods.  Some of these we used here are getElementByID, getElementsByClassName, and getElementsByTagName.  Additionally, some familiarity with CSS is good since you can use dot notation to add style, positioning and other properties using similar syntax as CSS.

*/