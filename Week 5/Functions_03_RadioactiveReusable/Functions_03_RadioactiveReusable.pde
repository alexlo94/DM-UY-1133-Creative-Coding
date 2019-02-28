/*
Functions_03_RadioactiveReusable.pde
Author: Alexandros Lotsos
Summary: A sketch that uses what we learned about functions in functions_01,
to make the radioactive symbol we drew back in week 1 something we can call and
reuse in our sketches.
*/

void setup(){
  size(1920, 1080);
  background(255);
   
  //we can use our function to draw radioactive symbols as we need!
  for(int i = 0; i < 50; i++){
    radioactive(random(width), random(height), random(-2, 2));
  }
}

//A function that draws a radioactive symbol at position x,y and scales it up by a factor s
void radioactive(float x, float y, float s){
  pushMatrix();
  translate(x,y); //translate to x,y and draw everything with relation to 0
  scale(s); //scale everything by s before we draw
  //the code below is the same as week 1 just divided by 10!
  fill(255,255,0); //yellow fill
  stroke(0); //black stroke
  strokeWeight(4);
  ellipse(0, 0, 80, 80); //background of the symbol
  fill(0);
  noStroke();
  //3 central petals
  arc(0, 0, 70, 70, radians(60), radians(120));
  arc(0, 0, 70, 70, radians(180), radians(240));
  arc(0, 0, 70, 70, radians(300), radians(360));
  stroke(255, 255, 0);
  strokeWeight(4);
  //central ellipse
  ellipse(0, 0, 20, 20);
  popMatrix();
}
