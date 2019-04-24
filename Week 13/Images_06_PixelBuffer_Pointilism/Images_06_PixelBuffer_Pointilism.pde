/*
Images_06_PixelBuffer-Pointilism.pde
Author: Alexandros Lotsos
Summary: A sketch that uses the color values of a source image to draw ellipses on the canvas
that have the appropriate color and location thus achieving an implementation of pointilism.
Credit: Based on the Pointillism example from Learning Processing
*/

//source image
PImage img;
//
int ellipseSize = 16;

void setup(){
  size(600, 600);
  img = loadImage("smile.png");
  background(255);
  noStroke();
}

void draw(){
  //pick a random point on the image
  int x = int(random(img.width));
  int y = int(random(img.height));
  //compute location just as before
  int loc = x + (y * img.width);
  
  //access the color of that pixel using the red, green blue() functions
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  
  //map the image location to the canvas location
  x = int(map(x, 0, img.width, 0, width));
  y = int(map(y, 0, img.height, 0, height));
  
  //draw an ellipse at that location with that color
  fill(r, g, b, 100); //slightly transparent fill
  ellipse(x, y, ellipseSize, ellipseSize);
  
}
