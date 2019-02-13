/*Loops_02_WhileinDraw.pde
Author: Alexandros Lotsos
Summary: In this sketch we will try to move our while loop into the draw loop and see how that changes things.
We are also going to give the sketch a full set of controls so that users can change the number of rectangles on the fly.
*/

float x = 0.0; //x-coord for rectangles
float num_rect = 5.0; //number of rects on the screen at a given time
float lim = 100.0; //upper limit on the number of rectangles that can be on the screen

void setup(){
  //set canvas parameters
  size(1920,1080);
  background(0);
  fill(255);
  stroke(0);
}

void draw(){
  background(0); //refresh bg
  
  x = 0.0; //reset X value to 0 at the start of the draw loop
  float xStep = width/num_rect; //compute the xStep based on the current value of num_rect
  
  while(x < width){
    rect(x, 540 - xStep/2, xStep, xStep); //draw the rectangle
    x += xStep; //increment X
  }
}

void keyPressed(){
  //Check for keyboard input: left arrow decreases number of rectangles while right arrow increases it
  if(keyCode == LEFT && num_rect > 0){
    num_rect--;
  }
  else if(keyCode == RIGHT && num_rect < lim){
    num_rect++;
  }
}
