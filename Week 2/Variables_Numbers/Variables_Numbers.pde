/*Variables_Numbers.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to show the different representations
of numbers (integers and floats) that are commonly used in Processing. Note that
Java supports doubles as well but processing does not use them.
Check here for the differences between doubles and floats: https://processing.org/reference/double.html
*/

int xPos_int = 0; //position for the rect that will be using ints.
int intStep = 1;
float xPos_float = 0.0; //position for the rect that will be using floats.
float floatStep = 0.5;

int squareDim = 250; //height and width for all squares in the sketch

void setup(){
  size(1920, 1080);
  background(0); //black background for contrast
  fill(255);
  textSize(50);
}

void draw(){
  background(0); //clear the background
  
  //draw first square that moves by int
  rect(xPos_int, 100, squareDim, squareDim);
  
  //draw second square that moves by float
  rect(xPos_float, 500, squareDim, squareDim);
  
  //display the values of the variables
  text("xPos_int = " + xPos_int, 100, 900);
  text("xPos_float = " + xPos_float, 100, 1000);
  
  //increment the positions by the step values above
  xPos_int += intStep;
  xPos_float += floatStep;
  
}
