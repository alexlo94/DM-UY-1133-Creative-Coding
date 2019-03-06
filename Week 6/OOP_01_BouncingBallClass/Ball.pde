/*
Ball.pde
Author: Alexandros Lotsos
Summary: A barebones definition of our ball class. Any Ball objects instantiated with this class definition will have as fields:
  (1) A position x, y
  (2) A velocity x, y
  (3) A radius r
  (4) A color c
  
 Any Ball object instantiated with this class will also have as methods:
  (1) A move() function to move around the canvas with velocity x, y
  (2) A display() function to draw itself on the canvas as an ellipse at position x,y , with radius r and with a fill of c
  (3) A checkCollision() function so that it can check whether it has collided with a boundary and reverse the appropriate speed value.
*/

//define a class with the class keyword
class Ball{
  /*Fields (data of the object) below.*/
  //They're actually just variables that each object is aware of
  public float posX, posY = 0; //position default 0, 0
  public float velX, velY = 4; //velocity default 4, 4
  public float radius = 100; //radius default 100
  
  public color fillColor = color(random(255), random(255), random(255)); //random default color
  
  /*Constructors (a recipe to instantiate a Ball object) below*/
  
  /*Notice how a constructor is basically just a function that:*
  *  (1) Doesn't have a return type                            *
  *  (2) Shares the same name as the class                     *
  * There can be multiple constructors for a single class      */
  
  //blank constructor will create an object with the default values
  public Ball(){
    
  }
  
  //A constructor can receive parameters that will let users of this class specify other values than the default ones for the fields
  //here's one that lets users define a Ball at any position x,y
  public Ball(float x, float y){
    posX = x;
    posY = y;
  }
  
  //And here's one that lets users fully customize each ball
  public Ball(float x, float y, float vx, float vy, float radius, color fillColor){
    //set position and velocity
    posX = x;
    posY = y;
    velX = vx;
    velY = vy;
    
    //set radius and color. Notice how radius and fillColor share names between parameters and fields
    //you can use this. to alleviate this confusion
    this.radius = radius;
    this.fillColor = fillColor;
  }
  
  /*Methods (functions that dictate the behavior of the object) below*/
  
  //How the ball is displayed
  public void display(){
    noStroke();
    fill(fillColor);
    ellipse(posX, posY, radius, radius);
    
  }
  
  //How the ball moves
  public void move(){
    posX += velX;
    posY += velY;
  }
  
  //How the ball reacts to collision
  public void checkCollision(){
    if(posX > width || posX < 0){
      velX *= -1;
    }
    if(posY > height || posY < 0){
      velY *= -1;
    }
  }
  
  
}
