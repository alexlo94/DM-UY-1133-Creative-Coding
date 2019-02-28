/*
Noise_05_Color2D.pde
Author: Alexandros Lotsos
Summary: A sketch that uses 2D perlin noise mapped to color. This is the original purpose that perlin noise was initially developed for.
To create more organic textures for 3D objects. This is a slow sketch so give it a few seconds on startup.
*/
void setup(){
  size(1920, 1080); //drop canvas dimensions if sketch is too slow on startup
  background(150);
  
  //nested loop to go through the entire canvas pixel-by-pixel
  float yoff = 0.0; //define y offset before y coord
  for(int y = 0; y < height; y++){
    float xoff = 0.0; //define x offset before x coord
    for(int x = 0; x < width; x++){
      stroke(noise(xoff, yoff)*255); //set stroke to a value of 2D nose based on xoff and yoff
      point(x, y); //draw the point of that color
      xoff += 0.01; //increment xoff
    }
    yoff += 0.01; //increment yoff
  }
}
