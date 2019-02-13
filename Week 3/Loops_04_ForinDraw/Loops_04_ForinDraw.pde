/*Loops_04_ForinDraw.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to give an example use case for a for loop and to prove the for-while loop equivalency by recreating Loops_02.
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
  
  float xStep = width/num_rect; //xStep given the current num_rect value
  
  //Again, notice how the forloop is packing the variable declaration, the condition and the incrementation in one neat package.
  //This is all stuff that the while loop is perfectly capable of, it's just neater now.
  for(float x = 0; x < width; x += xStep){
    rect(x, 540 - xStep/2, xStep, xStep);
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
