/*
Images_02_Animation.pde
Author: Alexandros Lotsos
Summary: A sketch that shows basic ways to manipulate an image in processing.
Similar to a geometric primitive (rect, ellipse etc.) there are ways that we can change
our images. Most notably we have:
  (1) Changing the 'fill' of an image with tint()
  (2) Changing the position of an image by animating it's x,y in image()
  (3) Changing the dimensions of an image by animating it's width and height in image()
  (4) Changing the drawing reference point of an image with imageMode().
  
 In general, loaded images behave just like any other primitive.
*/

//Container of type PImage for our image
PImage img;
float imgDim = 10;
float dimStep = 5;
float maxDim = 200;

void setup(){
  //create canvas
  size(600, 600);
  //load image
  img = loadImage("earth.png");
  //png's with transparent backgrounds will be imported as such. Uncomment below and comment above to see this
  //img = loadImage("earth-transparent.png");
  
  //Change images to be drawn with respect to their center
  imageMode(CENTER);
}

void draw(){
  background(255);
  //first drawing of earth as a background
  tint(frameCount%255); //tint takes the same arguments as fill except a single value will indicate alpha
  image(img, width/2, height/2, width, height);
  
  //have the second drawing of earth change color over time
  tint(255, frameCount%255, 0);
  image(img, mouseX, mouseY, imgDim, imgDim); //use mouseX, mouseY or any other quantity to animate an images' position
  
  if(imgDim > maxDim || imgDim < 10){
    dimStep *= -1;
  }
  
  imgDim += dimStep;
}
