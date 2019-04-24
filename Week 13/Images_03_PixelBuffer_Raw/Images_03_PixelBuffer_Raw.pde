/*
Images_03_PixelBuffer-Raw.pde
Author: Alexandros Lotsos
Summary: A sketch that shows the basics of interacting with the pixel buffer of a processing sketch.
Every processing sketch has the ability to write directly to the screen's pixels and draw without calling
functions like line() or rect(). A program that writes to the pixel buffer operates as follows:
  (1) Load the pixels with loadPixels() at the beggining of a frame
  (2) Loop through the 1-d array of pixels* and change their color value by assigning a processing color object to them
  (3) Push those colors to the display with updatePixels()
  
 *Note that while we're used to thinking of a pixel array in 2D. Processing stores the pixels in a 1D array
 While it helps to think of a pixel at position (x,y), in reality each pixel's position in the array is defined by:
   x + (y * width)
*/

void setup(){
  size(1200, 1200);
  //background(0);
}

void draw(){
  //load the pixels
  loadPixels();
  
  //process the pixels
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
      //compute the distance of the given pixel to the mouse
      float distance = dist(x, y, mouseX, mouseY);
      //make a color out of the distance by constraining it to 255
      color c = color(constrain(distance, 0, 255)); 
      
      //compute the location of the pixel in the array
      int loc = x + (y * width);
      
      //set that pixel to c.
      //the pixels array becomes available after loadPixels has been called
      pixels[loc] = c;
      
    }
  }
  
  //update the pixels
  updatePixels();
}
