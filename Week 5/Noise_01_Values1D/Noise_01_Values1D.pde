/*
Noise_01_Values1D.pde
Author: Alexandros Lotsos
Summary: A sketch showcasing the difference between random values from random() and noise()
*/

float start = 0; //beginning of noise offset

void setup(){
  size(1920, 1080);
  background(150);
  stroke(255);
  noFill();
  
  //comment below to get a sense of how noise values vary over time 
  noLoop();
}

void draw(){
  background(150); //refresh bg
  
  //draw the top, random band notice how the value of each point is (almost) truly random
  beginShape();
  for(float x = 0; x < width; x++){
    float y = 400 + random(-200, 200);
    vertex(x, y);
  }
  endShape();
  
  //draw the bottom, noise band notice how the value of each point is related to the previous one
  float xoff = start; //start at a slightly higher xoffset so that you can scroll through all the noise values over time
  beginShape();
  for(float x = 0; x < width; x++){
    float y = 800 + noise(xoff) * 200; //add noise values * 200 to our second band's position
    vertex(x, y);
    xoff += 0.01; //increment noise offset
  }
  endShape();
  start += 0.1; //increment starting point for noise values
}
