/*
Transformations_04_TransformationsInDraw.pde
Author: Alexandros Lotsos
Summary: A sketch to showcase the use of transformations in the draw loop. It's worth noting that in between every frame 
of draw, processing wipes any transformations. In essence, processing includes a pushMatrix() statement before every draw loop
and a popMatrix() after every draw loop by default. Let's use what we've learned about transformations to create some rotating objects,
including one that sticks to our cursor.
*/

float angle = 0.0; //angle by which to rotate every frame
float scaleFactor = 1.0; //current scale of the rectangles
float scaleStep = 0.01; //amount by which to increment scaleFactor

void setup(){
  //set canvas parameters
  size(1920, 1080);
  background(0);
  noStroke();
  rectMode(CENTER);
  
  //we're gonna be adding some color so set up HSB
  colorMode(HSB, 360, 100, 100);
}

void draw(){
  background(0); //refresh Bg
  
  //Before we translate to our cursor, let's draw some background rectangles that will rotate independently
  fill(360 - (angle%360), 100, 100); //choose inverse color for these
  
  //first rectangle. Order of transformations matters! What do you think would happen if rotate came before translate?
  pushMatrix();
  translate(220, 220); // translate to top left plus an offset
  rotate(-1*radians(angle)); //rotate the canvas
  scale(scaleFactor); //scale the canvas
  rect(0, 0, 200, 200); //draw the shape
  popMatrix();
  
  //second rectangle
  pushMatrix();
  translate(width - 220, 220); //translate to top right
  rotate(-1*radians(angle));
  scale(scaleFactor);
  rect(0, 0, 200, 200);
  popMatrix();
  
  //third rectangle
  pushMatrix();
  translate(width - 220, height - 220); //translate to bottom right
  rotate(-1*radians(angle));
  scale(scaleFactor);
  rect(0, 0, 200, 200);
  popMatrix();
  
  //fourth rectangle
  pushMatrix();
  translate(220, height - 220); //translate to bottom left
  rotate(-1*radians(angle));
  scale(scaleFactor);
  rect(0, 0, 200, 200);
  popMatrix();
  
  //Now, translate the origin to wherever the mouse is.
  fill(angle % 360, 100, 100); //choose a color by mapping the angle of rotation to a position on the color wheel
  pushMatrix();
  translate(mouseX, mouseY);
  rotate(radians(angle));
  rect(0, 0, 100, 100); //draw the rectangle
  //What would happen if I added more shapes while translated on mouseX, mouseY?
  popMatrix();
  
  angle += 2.0; //increment the angle
  
  scaleFactor += scaleStep; //increment the scaleFactor
  
  //keep scale in check and multiply by 1
  if(scaleFactor >= 2.0 || scaleFactor <= 1.0){
    scaleStep *= -1;
  }
}
