/*
Transformations_02_Scale.pde
Author: Alexandros Lotsos
Summary: A sketch meant to introduce the scale() transformation and how to use it in combination with translate().
Just as translate() moves the point of origin, scale will change your coordinate system and magnify everything by a percentage factor.
(i.e. scale(2.0) will scale everything up by 200%
*/

void setup(){
  //set canvas parameters
  size(1920, 1080);
  background(0);
  noStroke();
  rectMode(CENTER);
  
  //let's test out the scale() transformation;
  pushMatrix(); //always start with pushMatrix
  translate(width/2, height/2); //set origin to the center of the window
  scale(10.0); //scale everything up by 1000%
  rect(0, 0, 100, 100); //draw a rectangle that will appear to have dimensions 1000, 1000 rather than 100, 100
  scale(0.5); //since scale is cummulative 10.0 * 0.5 = 5.0 and there we're now scaling everything up by 500%
  fill(255, 0, 0); //change fill to notice effect
  rect(0, 0, 100, 100); //this rect should now have dimensions 500, 500
  scale(0.5); //repeat division by half, this time we have 250%
  fill(255);
  rect(0, 0, 100, 100); //should have dimensions 250, 250
  scale(0.5); //same here so we should have 125%
  fill(255, 0, 0);
  rect(0, 0, 100, 100); //should have dimensions 125, 125
  popMatrix(); //always end with popMatrix
  
  //let's translate to the center and draw a green triangle with 100, 100 to verify that scale worked correctly
  pushMatrix();
  translate(width/2, height/2);
  fill(0, 255, 0);
  rect(0, 0, 100, 100);
  popMatrix();
}
