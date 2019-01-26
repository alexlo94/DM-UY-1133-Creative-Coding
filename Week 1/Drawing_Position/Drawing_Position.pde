//Drawing_Position.pde
//Author: Alexandros Lotsos
/*Summary: The purpose of this sketch is to introduce you to the canvas system
that is ubiquitous in creative coding and to also introduce you to the anatomy of a processing sketch. */

/*setup is a function that will be called first and is mainly used for initialization.
Use it to set the global parameters of the sketch like the canvas size, background color etc.
setup will execute exactly once, from top to bottom.*/
void setup(){
  size(1350, 1200); /* size is used to declare the dimensions of your canvas (i.e. this one has a width of 1350 and height of 1200).
  The exact syntax is size(width, height); */
  
  /*contrary to the popular cartesian coordinate system you're used to, (0,0) in processing is on the top left rather than the middle.
  notice how the following rectangles change positions on the canvas.*/
  rect(0, 0, 200, 200); //rect is a function that draws a rectangle with syntax rect(posX, posY, width, height);
  rect(1150, 1000, 200, 200);
  rect(1150, 0, 200, 200);
  rect(0, 1000, 200, 200);
  
  //if posX or posY exceed the dimensions of the canvas, objects will not show because they are drawn "outside" of the canvas
  //try tweaking the dimensions of the canvas to make all three of the following squares appear.
  rect(1400, 800, 200, 200);
  rect(800, 1400, 200, 200);
  rect(1400, 1400, 200, 200);
}

/*most sketches will also have a draw function that is called after setup and runs repeatedly, multiple times a second.
draw is mostly used to animate things on a frame-by-frame basis and to respond to events.
since we're just drawing static shapes. Let's leave this alone for now.*/
void draw(){
  
}
