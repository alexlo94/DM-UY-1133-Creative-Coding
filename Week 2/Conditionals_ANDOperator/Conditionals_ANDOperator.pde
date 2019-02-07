/*Conditionals_ANDOperator.pde
Author: Alexandros Lotsos
Summary: A demo showing how to use the AND logical operator.
Will split the canvas in 4 quadrants and draw a different colored ellipse
based on the (x,y) position of the mouse.
*/

void setup(){
  size(1920, 1080);
  background(150);
}

void draw(){
  background(150);
  
  //draw the quadrant lines
  strokeWeight(5);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  //pick the appropriate color based on (x,y) coordinates
  if(mouseX > width/2 && mouseY > height/2){
    fill(255, 0, 0);
  }else if(mouseX < width/2 && mouseY > height/2){
    fill(0, 255, 0);
  }else if(mouseX > width/2 && mouseY < height/2){
    fill(0, 0, 255);
  }else{
    fill(255, 255, 0);
  }
  
  //draw the ellipse with the fill above
  ellipse(mouseX, mouseY, 200, 200);
}
