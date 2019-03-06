/*
OOP_01_BouncingBallClass.pde
Author: Alexandros Lotsos
Summary: A revisit of the classic bouncing ball sketch that implements a Ball class.
*/

//define an array that can fit 100 Ball Objects
Ball[] balls = new Ball[100];

void setup(){
  size(1920, 1080);
  background(0);
  
  //populate the array with new ball objects that have a random
  for(int i = 0; i < 100; i++){
    //instantiate a new Ball object with the new keyword, just like we did with arrays
    //let's use the deluxe constructor that lets us have control over everything
    color c = color(random(255), random(255), random(255));
    Ball b = new Ball(random(width), random(height), random(-5, 5), random(-5,5), random(20, 100), c);
    
    //place the new ball into the array
    balls[i] = b;
  }
}

void draw(){
  background(0);
  
  //Every frame, loop through the ball array and tell each ball to display itself, move itself, and check its collision
  for(int i = 0; i < 100; i++){
    balls[i].display();
    balls[i].move();
    balls[i].checkCollision();
  }
}
