/*Conditionals_IFELSE.pde
Author: Alexandros Lotsos
Summary: A demo of an if-else statement in processing.
Will draw a rect on the mouse when mouseX is past the middle but an ellipse
otherwise.
*/

void setup(){
  size(1920, 1080);
  fill(255);
  stroke(255);
  background(0);
  rectMode(CENTER);
  strokeWeight(15);//for visual clarity
}

void draw(){
  background(0); //refresh background
  
  //draw a line down the middle of the screen for visual separation
  line(width/2, 0, width/2, height);
  
  /*This is an if-else statement.If the boolean expression in the parentheses
  evaluates to true, then the code in the first set of curly braces will execute
  Otherwise, if the boolean expression in the parentheses evaluates to false,
  then the code in the else block will be executed.*/
  if(mouseX > width/2){
    rect(mouseX, mouseY, 200, 200);
  }else{
    ellipse(mouseX, mouseY, 200, 200);
  }
}
