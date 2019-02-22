/*
Transformations_03_Rotate.pde
Author: Alexandros Lotsos
Summary: A sketch meant to introduce the last of the three transformations in processing: rotate().
Rotate() will rotate the entire coordinate system around it's origin. Without the use of any other transformations,
rotate() will rotate everything in the sketch around the top left corner by an amount specified in radians.
If you are uncomfortable with radian measurements you can always convert a degree measurement via radians(180), for example.
*/

void setup(){
  //set canvas parameters
  size(1920, 1080);
  background(0);
  noStroke();
  rectMode(CENTER);
  
  //let's draw a rectangle without any transformations for reference
  fill(255);
  rect(500, 150, 200, 200);
  
  //now let's rotate the canvas by 45 degrees and see how that looks
  pushMatrix();
  rotate(radians(45));
  rect(500, 150, 200, 200); //notice how I'm using the same coordinates as before
  
  //since transformations are cumulative, let's undo the rotation and translate to the center
  rotate(radians(-45));
  translate(width/2, height/2);
  rect(0, 0, 400, 400);
  
  //now that my origin is at the center, what will happen if i rotate around the center and draw a rectangle with the same coordinates?
  rotate(radians(20));
  rect(0, 0, 400, 400); //I get a rectangle that's rotated about it's center!
  rotate(radians(20));
  rect(0, 0, 400, 400);
  rotate(radians(20));
  rect(0, 0, 400, 400);
  popMatrix();
  
  //In fact, as you'll see in the next couple of sketches, translating your origin to where you want your shape to be,
  //and then rotating around that point is the key to making shapes that rotate around themselves!
}
