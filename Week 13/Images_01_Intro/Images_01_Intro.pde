/*
Images_01_Intro.pde
Author: Alexandros Lotsos
Summary: A simple sketch that shows how to load and display an image on the canvas.
Note that images must be in the data folder of your sketch.
*/

//Processing gives a PImage class to handle the loading of images
PImage img;

void setup(){
  size(600, 600);
  //use the loadImage as a kind of constructor for images
  img = loadImage("earth.png");
}

void draw(){
  background(150);
  
  //use the image command to draw the image onto the canvas
  //width and height are optional
  image(img, 0, 0, width, height); //syntax: image(imageVar, x, y, width, height);
}
