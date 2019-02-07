/*Arithmetic_Operators.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to introduce all the different operators
that are available to you in processing. Stay tuned for amazing examples on how to
use the mod operator (%).
*/

void setup(){
  //try switching these values around to satisfy your curiosity
  int x = 32;
  int y = 6;
  
  /*
  There are 5 different basic operators available:
    + for addition
    - for subtraction
    * for multiplication
    / for division
    % for modulo (division with remainder)
  */
  println("For the values of x = " + x + " and y = " + y + " we have:");
  println("x + y = " + (x + y));
  println("x - y = " + (x - y));
  println("x * y = " + (x * y));
  //notice that integer division will TRUNCATE decimal points.
  //It will not round up or down, it will just DISCARD any decimal values
  println("x / y = " + (x / y));
  println("x % y = " + (x % y));
  
  //in order to keep division from discarding information use floats instead
  //let's cast the previous values of x and y into floats and try the operators again
  float xF = (float)x;
  float yF = (float)y;
  
  println("For the values of xF = " + xF + " and yF = " + yF + " we have:");
  println("xF + yF = " + (xF + yF));
  println("xF - yF = " + (xF - yF));
  println("xF * yF = " + (xF * yF));
  println("xF / yF = " + (xF / yF)); //this should return the expected value
  println("xF % yF = " + (xF % yF)); //this still somehow works
  
  //what happens if the operand types do not match?
  //results will default to whatever datatype holds more info (in this case float)
  println("For the values of x = " + x + " and yF = " + yF + " we have:");
  println("x + yF = " + (x + yF));
  println("x - yF = " + (x - yF));
  println("x * yF = " + (x * yF));
  println("x / yF = " + (x / yF));
  println("x % yF = " + (x % yF));
}
