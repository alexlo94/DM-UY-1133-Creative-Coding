/*Loops_01_WhileLoop.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to introduce the concept of a while loop and to show on of their basic use cases.
*/

/*Loops, similar to conditional statements, are another type of code block that we can use to make our lives a little easier.
In general, the purpose of a loop is to repeat some code for a certain number of times. If you want to draw 100 rectangles,
with a loop you can do just that without having to type "rect(...)" 100 times.
In this sketch we will be examining the while loop, which repeats some code as long as a certain condition is true. In other words,
For a set of lines of code S and a condition C we have: "Execute code S, while condition C is true".
Below we will be using a while loop to draw multiple squares across the screen.
*/

void setup(){
  //set canvas parameters
  size(1920, 1080);
  background(0);
  fill(255);
  stroke(0);
  
  float x = 0.0; //x-coordinate for the rectangles.
  float num_rect = 20; //number of rectangles we want on the screen. Change this and see the effects.
  float xStep = width/num_rect; //amount by which x will be incremented.
  
  while(x < width){
    rect(x, 540, xStep, xStep); //draw the rectangle at the x-coordinate with the dimensions we calculated above.
    x += xStep; //increment x by xStep so that the next rectangle will be drawn next to the previous one. This is the most important line in the loop. Can you tell why?
    println("x currently has a value of: " + x + " and the condition (x < width) is: " + (x < width));
  }
  println("The while loop has terminated");
}
