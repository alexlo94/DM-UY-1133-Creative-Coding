/*Conditionals_OROperator.pde
Author: Alexandros Lotsos
Summary: A demo showing how to use the OR logical operator to establish offset
zones that will tweak the fill color of the sketch when moused over. Will draw
*/

void setup(){
  size(1920, 1080);
  background(150);
}

void draw(){
  background(150);
  
  //draw the zone lines
  strokeWeight(5);
  line(2*width/3, 0, 2*width/3, height);
  line(0, 2*height/3, width, 2*height/3);
  
  //pick the appropriate color based on (x,y) coordinates
  if(mouseX > 2*width/3 && mouseY > 2*height/3){
    fill(255, 0, 0);
  }else if(mouseX > 2*width/3 || mouseY > 2*height/3){
    fill(255, 255, 0);
  }else{
    fill(0, 0, 255);
  }
  
  //draw the ellipse with the fill above
  ellipse(mouseX, mouseY, 200, 200);
}
