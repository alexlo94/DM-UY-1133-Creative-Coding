/*Variables_ShiftPosition.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to show how you can reuse variables to position things easier
*/

void setup(){
  //try changing these values and see what happens to the rest of the sketch
  int y = 540;
  int radius = 600;
  
  size(1920, 1080);
  ellipse(300, y, radius, radius);
  ellipse(950, y, radius, radius);
  ellipse(1600, y, radius, radius);
  
}
