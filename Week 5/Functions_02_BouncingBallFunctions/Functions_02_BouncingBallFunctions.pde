/*
Functions_02_BouncingBallFunctions.pde
Author: Alexandros Lotsos
Summary: A sketch that uses what we learned about functions in functions_01,
to make the bouncing ball sketch more modular using functions.
*/

//define global variables to keep track of the ball's speed and position
float xPos = 0.0;
float yPos = 0.0; //x,y positions
float xSpeed = 2.0;
float ySpeed = 5.0;//x,y speeds

void setup(){
  size(1920, 1080);
  background(150);
}

/*
Reading through our old bouncing ball sketch, it's clear that the draw loop contained code
to do 3 specific things:
  (1) draw the ellipse at position x,y
  (2) check the collision of the boundaries
  (3) move the ball based on its speed
Let's do the exact same thing but using functions to make our code more readable
*/
void draw(){
  background(150); //refresh bg
  
  displayBall(); //function to display our ball
  checkCollision(); //function to check collision with boundaries
  moveBall(); //function to move our ball based on speed
}

//let's define the functions we called in the draw loop
//notice how the code below is identical to the one used 

void displayBall(){
  ellipse(xPos, yPos, 100, 100);
}

void checkCollision(){
  if(xPos > width || xPos < 0.0){
    xSpeed *= -1.0;
  }
  if(yPos > height || yPos < 0.0){
    ySpeed *= -1.0;
  }
}

void moveBall(){
    xPos += xSpeed;
    yPos += ySpeed;
}
