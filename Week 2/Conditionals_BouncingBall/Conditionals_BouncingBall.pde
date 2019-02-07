/*Conditionals_BouncingBall.pde
Author: Alexandros Lotsos
Summary: A bouncing ball sketch that showcases movement within the bounds of the canvas, along with a full suite of controls
to start/stop/reset and tweak the speed of the ball. S to Start/Stop, R to Reset, Up/Down, Right/Left to increase/decrease Yspeed and Xspeed respectively.
*/

//define global variables to keep track of the ball's speed and position
float xPos = 0.0;
float yPos = 0.0; //x,y positions
float xSpeed = 2.0;
float ySpeed = 5.0;//x,y speeds
boolean play = true; //state that determines wether the ball should be moving


void setup(){
  size(1920, 1080);
  background(150);
}

void draw(){
  background(150);
  
  //draw the ellipse
  ellipse(xPos, yPos, 100, 100);
  
  //check to see if the ellipse has collided with one of the boundaries
  //if the ellipse collides with a left or right boundary, then reverse the xSpeed
  //if the ellipse collides with a top or bottom boundary, then reverse the ySpeed
  if(xPos > width || xPos < 0.0){
    xSpeed *= -1.0;
  }
  if(yPos > height || yPos < 0.0){
    ySpeed *= -1.0;
  }
  
  //move the ellipse if play is true
  if(play){
    xPos += xSpeed;
    yPos += ySpeed;
  }
}

//keyPressed is a function like draw and setup that only gets called when processing detects a key press
void keyPressed(){
  //the key variable can be used to determine what ASCII key was pressed last, or is currently being pressed
  //in this case the S and R keys will be used to stop/start the ball and reset speeds respectively.
  if(key == 's' || key == 'S'){
    play = !play;
  }else if(key == 'r' || key == 'R'){
    xSpeed = 2.0;
    ySpeed = 5.0;
  }
  
  //the keyCode variable can be used to keep track of any non-ASCII key that was pressed last, or is currently pressed
  if(keyCode == UP){
    ySpeed += ySpeed*0.2; //20% increase
    println("ySpeed = " + ySpeed);
  }else if(keyCode == DOWN){
    ySpeed -= ySpeed*0.2; //20% decrease
    println("ySpeed = " + ySpeed);
  }else if(keyCode == LEFT){
    xSpeed -= xSpeed*0.2; //20% decrease
    println("xSpeed = " + xSpeed);
  }else if(keyCode == RIGHT){
    xSpeed += xSpeed*0.2; //20% increase
    println("xSpeed = " + xSpeed);
  }
}
