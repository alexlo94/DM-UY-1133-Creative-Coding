/*
Polar_01_Circle.pde
Author: Alexandros Lotsos
Summary: A sketch showing how to utilize polar coordinates in processing to draw a circle.
*/

float rad = 400; //radius of our circle
float angle = 0.0; //angle for our circle starts at 0;

void setup(){
  size(1920, 1080);
  background(0);
  noFill();
  stroke(255);
}

void draw(){
  background(0);
  
  pushMatrix();
  translate(width/2, height/2); //translate to middle of the canvas
  beginShape();
  for(float t = 0; t < angle; t += 0.01){ 
    //notice how the x and y coordinates of each point are calculated
    float x = rad * cos(t);
    float y = rad * sin(t);
    vertex(x, y);
  }
  endShape();
  popMatrix();
  if(angle < TWO_PI){ //increase maximum angle gradually to animate the drawing of the circle
    angle += 0.01; //increase this step to draw the circle faster
  }
}
