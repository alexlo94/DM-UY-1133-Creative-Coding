/*
Images_04_PixelBuffer-Image.pde
Author: Alexandros Lotsos
Summary: A sketch that shows how to access the pixels of a specific image and alter their color values.
This example shows a basic implementation of a threshold filter.
Credit: Based on the Brightness Threshold example from Learning Processing.
*/

//source and destination images. Destination image is simply the screen's pixel buffer
PImage source;
PImage destination;

//threshold for the image
float threshold = 100;
float threshStep = 2;

void setup(){
  size(600, 600);
  source = loadImage("earth.png");
  //createImage can be used to create new images on the fly. This one is blank
  destination = createImage(source.width, source.height, RGB);
  
}

void draw(){
  //load pixels for both images
  source.loadPixels();
  destination.loadPixels();
  
  //process the pixels, note that we're using source.width and source.height
  for(int x = 0; x < source.width; x++){
    for(int y = 0; y < source.height; y++){
      //get the location of the target pixel
      int loc = x + (y * source.width);
      
      //test the brightness of the pixel with the brightness() method
      if(brightness(source.pixels[loc]) < threshold){
        destination.pixels[loc] = color(255);
      }else{
        destination.pixels[loc] = color(0);
      }
    }
  }
  
  //update the destination pixels
  destination.updatePixels();
  //display the destination image
  image(destination, 0, 0, width, height);
  
  //Uncomment below for animation of threshold
  //update threshold
  threshold += threshStep;
  if(threshold > 255 || threshold < 50){
    threshStep *= -1;
  }
}
