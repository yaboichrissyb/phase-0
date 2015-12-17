<p>
  ![one](/chrome-devtools/imgs/3.4-1.png)
 ![two](/chrome-devtools/imgs/3.4-2.png)
 ![three](/chrome-devtools/imgs/3.4-3.png)
![four](/chrome-devtools/imgs/3.4-4.png)
![5](/chrome-devtools/imgs/3.4-5.png)
 ![six](/chrome-devtools/imgs/3.4-6.png)
 ![seven](/chrome-devtools/imgs/3.4-7.png)
![eight](/chrome-devtools/imgs/3.4-8.png)
 ![nine](/chrome-devtools/imgs/3.4-9.png)
</p>

How can you use Chrome's DevTools inspector to help you format or position elements?

In Chrome's DevTools inspecto you can select individual HTML elements and easily see the CSS properties and values assigned to them. You can add and remove individual properties by selecting or unselecting the box from the CSS Styles dropdown.  You can immediately see the effect of each change on the displayed page.  This makes it very helpful for less experienced developers who may be doing some guessing and checking as well as more experienced developers to compare the effects of different styling and formatting decisions.

How can you resize elements on the DOM using CSS?

You can easily adjust the height and width properties  using px, em, or even percentages.

What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?

Each of the four position values allows you to accomplish different positions by different means.  The default position for an element is static, which means that it cannot be manipulated by the top, bottom, right and left properties.  It is always positioned according to the normal flow of the page, which, as far as I understand it, means it will be positioned based on the order in which it is created.  The relative position allows you to adjust the positioning of the element based on its default position using the top, bottom, right and left properties.  The fixed position allows you to position an element in a permanent position relative to the window or page.  This is useful for a header, footer, or nav bar if you want that element to remain in the same position as the user scrolls the page.  An absolute position value allows you to position the element relative to its nearest positioned ancestor (whichever comes next in the hierarchical html tree) but if there is no positioned ancestor it will position itself relative to the document body and move along with page scrolling.
Generally, the relative position was easiest to use because it allowed you to move the element based on where it first shows up on the page.  This made it easy to adjust the top, bottom etc. values to get it exactly where we wanted it.  Though, for a footer element, we obviously could not accomplish the desired position with a relative value so we had to use a fixed value so it would stay at the bottom as the page scrolled.

What are the differences between margin, border, and padding?

The margin is the space between the outermost edge of the object and the nearest other element, though sometimes this is only the outside margin of the page.  The border allows you to style and format the outermost edge without affecting the internal content of the object, and the padding is the space between the internal content and the border.

What was your impression of this challenge overall? (love, hate, and why?)

This challenge took a bit longer than we initially anticipated but we were always able to get through each step and solve the problems that arose.  The insights we got will probably prove to be very valuable in the future but it was a bit tedious and, at points, annoying trying to position our elements exactly as they were in the example images.



