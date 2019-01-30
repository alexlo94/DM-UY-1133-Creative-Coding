/*Drawing_STOP.pde
Author: Alexandros Lotsos
Summary: This is a sketch meant to apply what we've learned so far in week 1.
We are going to use basic shape and color statements to recreate a classic STOP sign.
*/

void setup(){
  size(1920, 1080);
  background(0); //black background for contrast
  
  //first white layer
  fill(255);
  stroke(255);
  strokeWeight(2);
  triangle(960, 540, 760, 140, 1160, 140); //top center
  triangle(960, 540, 760, 940, 1160, 940); //bottom center
  triangle(960, 540, 560, 340, 560, 740); //left center
  triangle(960, 540, 1360, 340, 1360, 740); //right center
  triangle(960, 540, 1160, 140, 1360, 340); //top right
  triangle(960, 540, 1360, 740, 1160, 940);//bottom right
  triangle(960, 540, 760, 940, 560, 740); //bottom left
  triangle(960, 540, 560, 340, 760, 140); //top left
  
  //second red layer
  fill(255, 0, 0);
  stroke(255, 0, 0);
  triangle(960, 540, 760, 160, 1160, 160); //top center
  triangle(960, 540, 760, 920, 1160, 920); //bottom center
  triangle(960, 540, 580, 340, 580, 740); //left center
  triangle(960, 540, 1340, 340, 1340, 740); //right center
  triangle(960, 540, 1160, 160, 1340, 340); //top right
  triangle(960, 540, 1340, 740, 1160, 920);//bottom right
  triangle(960, 540, 760, 920, 580, 740); //bottom left
  triangle(960, 540, 580, 340, 760, 160); //top left
  
  //text in the middle
  fill(255);
  stroke(255);
  textSize(275);
  textAlign(CENTER, CENTER);
  text("STOP", 960, 520);
  
}

void draw(){
}
