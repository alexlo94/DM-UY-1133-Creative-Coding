/*
Transformations_01_Translate.pde
Author: Alexandros Lotsos
Summary: A sketch meant to introduce the concept of transformations in processing and show off the translate() transformation
which moves the origin of your sketch. Pay close attention to the use of pushMatrix() and popMatrix() as those are essential for
all transformations, not just translate.
*/

/*
Transformations are a very useful tool in processing, allowing you to translate, rotate and scale your drawings without the use
of complicated math. This first sketch is going to introduce the translate function which moves the origin of your sketch. a statement
like translate(width/2, height/2); will make the center of your sketch the origin, just like in a cartesian coordinate system.
Keep in mind the following:
  (1)Every set of transformations is cumulative
     (i.e. translate(100, 100), followed by translate (50, 20) will translate your shapes by translate(150, 120))
  (2)Every set of transformations must start with pushMatrix and end with popMatrix (similar to beginShape and endShape for vertices).
*/

void setup(){
  //set canvas parameters
  size(1920, 1080);
  background(0);
  noStroke();
  rectMode(CENTER);
  
  //let's translate the point of origin to the center
  pushMatrix(); //always start with pushMatrix
  translate(width/2, height/2); //syntax: translate(x, y);
  //notice now that my rectangles are drawn with reference to the center of the window
  rect(0, 0, 200, 200); //middle rectangle
  rect(200, 200, 200, 200); //bottom right
  rect(-200, 200, 200, 200); //bottom left
  rect(200, -200, 200, 200); //top right
  rect(-200, -200, 200, 200); //top left
  popMatrix(); //popMatrix gets rid of all the transformations I defined after pushMatrix
  
  //notice that after popMatrix a rectangle at 0,0 will appear on the top left as normal
  fill(255, 0, 0);
  rect(0, 0, 200, 200); //should appear at top left
  
  //let's demonstrate the cumulative nature of transformations
  pushMatrix(); //define a new pushMatrix block
  translate(width, 0); //set origin to top right corner
  rect(0, 0, 200, 200); //top right red rect
  translate(0, height); //add another translate on top of the previous one now origin is at width, height
  rect(0, 0, 200, 200); //bottom right red rect
  translate(-width, 0); //notice how you can "undo" transformations by adding the inverse ones
  rect(0, 0, 200, 200); //bottom left red rect
  popMatrix(); //always use popMatrix after you're done drawing
}
