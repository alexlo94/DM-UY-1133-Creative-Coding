/*
Arrays_03_BouncingBallRedo.pde
Author: Alexandros Lotsos
Summary: A redo of the bouncing ball sketch from the conditionals examples
that uses arrays to keep track of multiple balls rather than just 1.
*/


int numBalls = 50; //number of balls in the sketch

//define array containers for ball parameters
float[] xPos = new float[numBalls];
float[] yPos = new float[numBalls]; //arrays to hold x,y positions

float[] xSpeeds = new float[numBalls];
float[] ySpeeds = new float[numBalls]; //arrays to hold x,y speeds

boolean play = true; //state that determines whether the balls should be moving

//let's use setup to populate the arrays with what we learned from Arrays_02
void setup(){ 
  //canvas parameters
  size(1920, 1080);
  background(150);
  
  //loop through all the arrays and set random values to use later
  for(int i = 0; i < numBalls; i++){
    //set a random x, y position for a given ball
    xPos[i] = random(100, width - 100);
    yPos[i] = random(100, height - 100);
    
    //set a random x, y speed for a given ball
    xSpeeds[i] = random(-8, 8);
    ySpeeds[i] = random(-8, 8);
  }
}

void draw(){
  background(150);//refresh bg
  
  for(int i = 0; i < numBalls; i++){
    ellipse(xPos[i], yPos[i], 100, 100); //draw the ith ellipse
    
    //check to see if the ith ellipse has collided with any boundaries
    if(xPos[i] > width || xPos[i] < 0.0){
      xSpeeds[i] *= -1;
    }
    if(yPos[i] > height || yPos[i] < 0.0){
      ySpeeds[i] *= -1;
    }
    
    //finally, move the ith ellipse if play is true
    if(play){
      xPos[i] += xSpeeds[i];
      yPos[i] += ySpeeds[i];
    }
  }  
}

//use the spacebar to start/stop the sketch
void keyPressed(){
  if(key == ' '){
    play = !play;
  }
}
