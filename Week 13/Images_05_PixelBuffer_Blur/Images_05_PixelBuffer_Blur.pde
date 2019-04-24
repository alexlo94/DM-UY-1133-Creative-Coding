/*
Images_05_PixelBuffer_Blur.pde
Author: Alexandros Lotsos 
Summary: An extension of Images_04 that extends pixel processing from single-pixel algorithms
to pixel-group algorithms. This specific example implements a blur filter where each destination pixel
is the result of the average of a group of pixels in the original image. Increasing the number of neighbors
taken will increase the intensity of the blur
*/

//image to be blurred
PImage source;
//container for blurred image
PImage destination;

void setup(){
  size(900, 600);
  background(0);
  
  source = loadImage("earth.png");
  destination = createImage(source.width, source.height, RGB);
  
  //make earth image grayscale
  for(int x = 0; x < source.width; x++){
    for(int y = 0; y < source.height; y++){
      int loc = x + y * source.width;
      float c = brightness(source.pixels[loc]);
      source.pixels[loc] = color(c);
    }
  }
  
}

void draw(){
  background(0);
  
  //load the pixels from both images
  source.loadPixels();
  destination.loadPixels();
  
  //loop through the pixels start from 1 to avoid index OOB
  for(int x = 1; x < source.width - 1; x++){
    for(int y = 1; y < source.height - 1; y++){
      //get the target pixel index and neighbor indices
      //Note this can be optimized with a 2D array
      int target = x + y*source.width;
      int up = x + (y-1)*source.width;
      int down = x + (y+1)*source.width;
      int right = (x + 1) + y*source.width;
      int left = (x - 1) + y*source.width;
      int upRight = (x + 1) + (y - 1)*source.width;
      int upLeft =  (x - 1) + (y - 1)*source.width;
      int downRight = (x + 1) + (y + 1)*source.width;
      int downLeft = (x - 1) + (y + 1)*source.width;
      
      float average = (brightness(source.pixels[up])
      + brightness(source.pixels[down])
      + brightness(source.pixels[left])
      + brightness(source.pixels[right])
      + brightness(source.pixels[upRight])
      + brightness(source.pixels[upLeft])
      + brightness(source.pixels[downRight])
      + brightness(source.pixels[downLeft]))/8;
      
      destination.pixels[target] = color(average);
    }
  }
  
  destination.updatePixels();
  image(source, 0, 0);
  image(destination, source.width, 0);
}
