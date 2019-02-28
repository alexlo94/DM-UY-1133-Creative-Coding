/*
Noise_03_Color1D.pde
Author: Alexandros Lotsos
Summary: A sketch showing how the different values of random and noise can be mapped to grayscale values
*/

float start = 0.0; //start of the xoffset for noise values

void setup(){
  size(1920, 1080);
  background(150);
  noFill();
  
  //Comment below to see how color can scroll through 1D perlin noise values
  noLoop();
}

void draw(){
  
  //draw the top random-colored band
  for(int x = 0; x < width; x++){
    stroke(random(255)); //random stroke value
    line(x, 200, x, 400);
  }
  
  //draw the bottom, noise-colored band
  float xoff = start;
  for(int x = 0; x < width; x++){
    stroke(noise(xoff)*255); //noise stroke value
    line(x, 600, x, 800);
    xoff += 0.02; //increment xoffset
  }
  start += 0.02; //adjust xoffset starting point
  
}
