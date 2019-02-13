/*Loops_03_ForLoop.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to introduce the concept of the for loop and to prove its equivalency to while loops by recreating Loops_01.
*/

/*
The remaining type of loop is, of course, the for loop. Simply put, the for loop is shorthand notation for a specific kind of while loop.
Namely, the while loop that aims to iterate some code a certain number of arbitrary times.
It is a little harder to explain neatly in once sentence like the while loop, but hopefully tracing the example in this sketch and comparing it
with the while loop in Loops_01 will help in understanding.
*/

void setup(){
  //set canvas parameters
  size(1920, 1080);
  background(0);
  fill(255);
  stroke(0);
  
  float num_rect = 10;
  float xStep = width/num_rect;
  
  //notice how there's no overhead associated with the for loop. Everything is packed into the loop
  for(float x = 0; x < width; x += xStep){ //this single first line of the for loop takes care of the variable declaration, condition, and incrementation we saw in the while loop.
    rect(x, 540 - xStep/2, xStep, xStep);
  }
}
