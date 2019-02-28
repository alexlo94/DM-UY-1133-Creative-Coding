/*
Noise_02_Position1D.pde
Author: Alexandros Lotsos
Summary: A sketch showing how the different values of random and noise can affect the movement of an ellipse
*/

float xoff = 0.0; //x offset for perlin noise

void setup(){
  size(1920, 1080);
  background(150);
  noStroke();
  fill(255);
}

void draw(){
  background(150); //refresh bg
  
  //draw first ellipse
  ellipse(random(width), 300, 200, 200); //random coordinates for its x
  
  //draw 2nd ellipse notice the less erratic, smoother movement of this ellipse
  ellipse(noise(xoff) * width, 800, 200, 200); //noise values for its x coordinates
  
  xoff += 0.01; //increment the x offset
}
