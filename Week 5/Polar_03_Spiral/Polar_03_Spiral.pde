/*
Polar_03_Spiral.pde
Author: Alexandros Lotsos
Summary: A sketch showcasing how to use polar coordinates to draw spirals by varying the radius of each point.
*/

float rad = 400; //radius of our circle
float angle = 0.0; //angle for our circle starts at 0;
float angleStep = 0.1; //amount by which max angle is increased

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
  for(float t = 0; t < angle; t += 0.01){ //change the amount t is incremented by to get a different polygon spiral
    //notice how the x, y coordinates of each point are calculated in relation to their individual radius
    float r = map(t, 0, angle, 0, rad); //try varying r in different ways to see how the spiral changes
    float x = r * cos(t);
    float y = r * sin(t);
    vertex(x, y);
  }
  endShape();
  popMatrix();
  //increase maximum angle gradually to animate the drawing of the circle
  //OPTIONAL: add a check to stop at TWO_PI or some other constant
  angle += angleStep; //increase the step to draw the circle faster
}
