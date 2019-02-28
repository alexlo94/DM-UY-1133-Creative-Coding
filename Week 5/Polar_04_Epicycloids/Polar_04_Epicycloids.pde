/*
Polar_04_Epicycloids.pde
Author: Alexandros Lotsos
Summary: A sketch showcasing the use of polar coordinates and parametric equations
to draw epicycloids of varying degrees. This sketch currently keeps b = 1, try varying it to see the results!
*/


/*
DEFINITION:
The path traced out by a point P on the edge of a circle of radius b, rolling on the outside of a circle of radius a
*/

float tau = 0.0; //the main parameter of the epicycloid
float a = 1; //radius of the inner circle
float b = 1; //radius of the outer circle

void setup(){
  background(0);
  size(1920, 1080);
  noFill();
  stroke(255);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  beginShape();
  for(float f = 0; f < tau; f += 0.01){
    float x = (a + b)*cos(f) - b*cos((a+b/b)*f);
    float y = (a + b)*sin(f) - b*sin((a+b/b)*f);
    vertex((200/a)*x,(200/a)*y);
  }
  endShape();
  tau += 0.1;
}

void keyPressed(){
  if(keyCode == LEFT){
    tau = 0;
    a--;
  }
  if(keyCode == RIGHT){
    tau = 0;
    a++;
  }
}
