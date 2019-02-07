/*Conditionals_IFELSEIF.pde
Author: Alexandros Lotsos
Summary: A demo of a complete logic tree in processing.
Will draw an ellipse of different colors on the mouse when mouseX
is in different numerical ranges.
*/

void setup(){
  size(1920, 1080);
  background(150);
}

void draw(){
  background(150);
  //draw the 3 lines for visual clarity
  stroke(0);
  line(480, 0, 480, height);
  line(960, 0, 960, height);
  line(1440, 0, 1440, height);
  
  /*This is a complete logic tree. Notice the inclusion of (more than one)
  else-if statement. Once any one condition is true, the appropriate code will
  be executed and the rest of the tree will be skipped!*/
  noStroke();
  if(mouseX > 1440){
    fill(255, 0, 0); //red fill for the last quadrant
  }else if(mouseX > 960){
    fill(0, 255, 0); //green fill for the second-to-last quadrant
  }else if(mouseX > 480){
    fill(0, 0, 255); //blue fill for the third-to-last quadrant
  }else{
    fill(255, 255, 0); //yellow fill for the first quadrant
  }
  
  //draw the ellipse on the mouse with the appropriately chosen fill
  ellipse(mouseX, mouseY, 200, 200);
  
}
