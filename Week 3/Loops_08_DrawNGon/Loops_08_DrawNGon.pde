/*
Loops_08_DrawNGon.pde
Author: Alexandros Lotsos
Summary: This sketch is an example of using a for loop and the map function to draw a variable polygon based on the value of mouseX.
This sketch makes use of basic trigonometric functions (sin and cos) so it will be revisited in in Week 4's material as well.
*/

int n = 6; //The number of angles in the polygon, default is 6 for hexagon

void setup(){
  size(1920, 1080);
  background(0);
  fill(255);
  noStroke();
}

void draw(){
  background(0); //refresh bg
  
  n = (int)map(mouseX, 0, 1920, 3, 12);
  
  float radius = 500; //the radius of the polygon on the screen
  //we'll draw the polygon 
  beginShape();
    for(int i = 0; i < n; i++){
       vertex(width/2 + radius*sin(radians(i*(360/n))), height/2 + radius*cos(radians(i*(360/n)))); 
    }
  endShape();
}
