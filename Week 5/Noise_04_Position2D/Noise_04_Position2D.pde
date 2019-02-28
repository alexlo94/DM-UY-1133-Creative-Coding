/*
Noise_04_Position2D.pde
Author: Alexandros Lotsos
Summary: A sketch that uses 2D perlin noise to move an ellipse around the canvas. Notice how much more natural and smooth
the movement is, as opposed to a solution that uses random().
*/

float xoff = 0; //beggining of xoffset

void setup(){
  size(1920, 1080);
  background(150);
  stroke(0);
}

void draw(){
  background(150);
  
  //coordinates of the ellipse using noise
  float x = noise(xoff) * width;
  float y = noise(xoff + 10000) * height;
  
  //coordinates of the ellipse using random, uncomment them to see the difference
  //float x = random(width);
  //float y = random(height);
 
  ellipse(x, y, 100, 100); //draw the ellipse at x,y
  
  xoff += 0.01; //increment the xoffset
}
