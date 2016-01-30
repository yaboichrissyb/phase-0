
 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: find key and reach end of level
// Goals: find key, avoid ghost
// Characters: Toby and ghost
// Objects: toby(position, fear, key/nokey, success), ghost
// Functions: moveUp, moveDown, moveForward, moveBack

// Pseudocode
//declare object 'Toby' that has properties
//add methods to 'Toby' to give it ability to move
//declare ghost object and give ability to move randomly
//declare key object and give it random position
//move toby and ghost, check position relative to each other after each move
//check if toby has found the key or not
//if toby runs in to ghost, fear =100 and success = false
//if toby finds the key, success = true, game over

// Initial Code
/*
//define toby object, starts with no fear, no key and position (0,0) on grid
var toby = {
  posX: 0,
  posY: 0,
  fear: 0,
  key: false,
  success: false,

//Toby move function
 move: function(direction) {
  if (direction === 'forward') {
    toby.posX += 10;
  }
  else if(direction ==='back') {
    toby.posX -= 10;
  }
  else if(direction === 'up') {
    toby.posY += 10;
  }
  else if(direction === 'down') {
    toby.posY -= 10;
  }
//ghost moves randomly when toby moves, can appear anywhere within range
ghost.posX = Math.floor((Math.random()*20) + 10);
ghost.posY = Math.floor((Math.random()*20) + 10);

//return Toby's position
console.log("Toby's position is " + toby.posX + "," + toby.posY + ".");
if (toby.posX < 0) {
  toby.posX = 0;
  console.log("Toby runs into a wall in the dark!  He can't go that way!");
}
else if (toby.posX > 50) {
  toby.posX = 50;
  console.log("Toby runs into a wall in the dark!  He can't go that way!");
}
else if (toby.posY < 0) {
  toby.posY = 0;
  console.log("Toby runs into a wall in the dark!  He can't go that way!");
}
else if (toby.posY > 50) {
  toby.posY = 50;
  console.log("Toby runs into a wall in the dark!  He can't go that way!");
}

//return ghost's position
console.log("The ghost's position is " + ghost.posX + "," + ghost.posY + ".");
if (ghost.posX < 0) {
  ghost.posX = 0;
}
else if (ghost.posX > 50) {
  ghost.posX = 50;
}
else if (ghost.posY < 0) {
  ghost.posY = 0;
}
else if (ghost.posY > 50) {
  ghost.posY = 50;
}

//After every move, check if Toby is near the ghost.
if (toby.posX === ghost.posX && toby.posY === ghost.posY) {
  toby.fear = 100;
  console.log("Toby encounters the specter!!! His heart begins to pound, time slows to a crawl, a thin, cracking voice within his own mind whispers, 'GAME OVER'. ")
}
else if (toby.posX === ghost.posX || toby.posY === ghost.posY) {
  console.log("Toby feels a presence...he is not alone in this dungeon.")
}

//After every move, check if toby has found the key.
if (toby.posX === key.posX && toby.posY === key.posY) {
toby.success = true;
console.log("Toby found the key.  He can now escape the dungeon.  You win!");
}
}
};

//define ghost object, starts with position (50,50) on grid
var ghost = {
  posX: 50,
  posY: 50,
};

//place key in random position on grid
var key = {
  posX: Math.floor((Math.random()*50) + 10),
  posY: Math.floor((Math.random()*50) + 10),
};

toby.move('up');
toby.move('forward');
toby.move('up');
toby.move('forward');
toby.move('up');
toby.move('forward');
toby.move('up');
toby.move('forward');
toby.move('up');
toby.move('forward');
toby.move('back')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('back')
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('back')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('back')
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('back')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('back')
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
*/

// Refactored Code
//define toby object, starts with no fear, no key and position (0,0) on grid
var toby = {
  posX: 0,
  posY: 0,
  fear: 0,
  key: false,
  success: false,

//Toby move function
 move: function(direction) {
  if (direction === 'forward') {
    toby.posX += 1;
  }
  else if(direction ==='back') {
    toby.posX -= 1;
  }
  else if(direction === 'up') {
    toby.posY += 1;
  }
  else if(direction === 'down') {
    toby.posY -= 1;
  }
//ghost moves randomly when toby moves, can appear anywhere within range
ghost.posX = Math.floor((Math.random()*2) + 1);
ghost.posY = Math.floor((Math.random()*2) + 1);

//return Toby's position
if (toby.posX < 0) {
  toby.posX = 0;
  console.log("Toby runs into a wall in the dark!  He can't go that way!");
}
else if (toby.posX > 10) {
  toby.posX = 10;
  console.log("Toby runs into a wall in the dark!  He can't go that way!");
}
else if (toby.posY < 0) {
  toby.posY = 0;
  console.log("Toby runs into a wall in the dark!  He can't go that way!");
}
else if (toby.posY > 10) {
  toby.posY = 10;
  console.log("Toby runs into a wall in the dark!  He can't go that way!");
}
console.log("Toby's position is " + toby.posX + "," + toby.posY + ".");
//return ghost's position
console.log("The ghost's position is " + ghost.posX + "," + ghost.posY + ".");
if (ghost.posX < 0) {
  ghost.posX = 0;
}
else if (ghost.posX > 10) {
  ghost.posX = 10;
}
else if (ghost.posY < 0) {
  ghost.posY = 0;
}
else if (ghost.posY > 10) {
  ghost.posY = 10;
}

//After every move, check if Toby is near the ghost.
if (toby.posX === ghost.posX && toby.posY === ghost.posY) {
  toby.fear += 100; {
  console.log ("Toby encounters the specter!!! His heart begins to pound, time slows to a crawl, a thin, cracking voice within his own mind whispers, 'GAME OVER'. ")}
  return;
  toby.posX = 0; toby.posY = 0; toby.fear = 0; toby.key = false; toby.success = false;
  ghost.posX = 10; ghost.posX = 10;
}

else if (toby.posX === ghost.posX || toby.posY === ghost.posY) {
  console.log("Toby feels a presence...he is not alone in this dungeon.")
}

//After every move, check if toby has found the key.
if (toby.posX === key.posX && toby.posY === key.posY) {
toby.success = true;
console.log ("Toby found the key.  He can now escape the dungeon.  You win!");
return;
toby.posX = 0; toby.posY = 0; toby.fear = 0; toby.key = false; toby.success = false;
  ghost.posX = 10; ghost.posX = 10;
}
}
};

//define ghost object, starts with position (50,50) on grid
var ghost = {
  posX: 10,
  posY: 10,
};

//place key in random position on grid
var key = {
  posX: Math.floor((Math.random()*10) + 1),
  posY: Math.floor((Math.random()*10) + 1),
};
toby.move('up');
toby.move('forward');
toby.move('up');
toby.move('forward');
toby.move('up');
toby.move('forward');
toby.move('up');
toby.move('forward');
toby.move('up');
toby.move('forward');
toby.move('back')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('back')
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('back')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('back')
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('back')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('down')
toby.move('back')
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
toby.move('up');
console.log(toby)




// Reflection
/*
What was the most difficult part of this challenge?
The most difficult part of this challenge for me was setting up parameters that allowed some degree of randomness for the key placement and ghost movement without making the game impossible to win or finish.

What did you learn about creating objects and functions that interact with one another?
It's easy to have objects interact with each other when you give them the same properties.  Then you can create conditionals based on these properties and call various methdos when the conditionals are met.  IN this case, all the objects I created had the same posX and posY properties, so it was easy to have them interact based on the values of those properties at any given time.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I used the .floor and .random math methods.  The .floor method basically makes sure the value of the input is an integer instead of a float and the random method allows you to create a random number between two given values.

How can you access and manipulate properties of objects?
You call object properties in JS in a similar way you would call methods on objects in Ruby: by using dot-notation.  If you have nested objects, you simply refer to the given property hierarchically with multiple dots.  You can manipulate the properties using built-in methods, conditional statements, numerical operators or basically any other way you would manipulate an object in Ruby, just with different syntax.
*/
//
//
//
//
//
//
//