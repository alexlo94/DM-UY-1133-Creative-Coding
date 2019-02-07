/*Conditionals_IF.pde
Author: Alexandros Lotsos
Summary: A sketch meant to introduce the concept of boolean expressions and
if-statements in processing. Will draw a rect on the mouse when mouseX is past
the middle
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
  
  /*This is an if-statement. The code in the curly brackets will
  only execute of the relational operation in the parentheses is true.
  In this case, the code will only execute if mouseX is greater than
  width/2.*/
  if(mouseX > width/2){
    rect(mouseX, mouseY, 200, 200);
  }
}
