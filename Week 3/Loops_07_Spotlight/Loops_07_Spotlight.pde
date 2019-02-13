/*
Loops_07_Spotlight.pde
Author: Alexandros Lotsos
Summary: An example using a nested for loop to create a grid where the individual cells are colored based on their distance from the mouse.
This example uses the processing map and dist functions. For more information on their syntax and uses, please refer to the documentation below:
map -> https://processing.org/reference/map_.html
dist -> https://processing.org/reference/dist_.html
*/

//starting x,y dimensions of the board and limit to the boards size
float xDim = 10;
float yDim = 10;
float lim = 100;

void setup(){
  size(1920, 1080);
  background(155);
  noStroke();
}

void draw(){
  background(155); //refresh bg
  
  //calculate rectangle dimensions based on dimensions
  float xStep = width/xDim;
  float yStep = height/yDim;
  
  //calculate maximum distance between the mouse and a tile based on the diagonal of the board
  float maxDist = dist(0, 0, xDim * xStep, yDim * yStep); //max distance here is the mouse on 0,0 and the last tile on the screen.
  
  for(float x = 0; x < xDim; x++){
    for(float y = 0; y < yDim; y++){
      //calculate current distance from mouse location
      float currDist = dist(x*xStep, y*yStep, mouseX, mouseY);
      //map current distance to a fill value that ranges from 255 to 0
      float fillDist = map(currDist, 0, maxDist, 255, 0);
      fill(fillDist);      
      rect(x*xStep, y*yStep, xStep, yStep);
    }
  }
}

void keyPressed(){
  //using the arrow keys and the R key we will:
  if(keyCode == LEFT && xDim > 5){ //decrease x dimension by one
    xDim--;
  }else if(keyCode == RIGHT && xDim < lim){ //increase x dimension by one
    xDim++;
  }else if(keyCode == DOWN && yDim > 5){ //decrease y dimension by one
    yDim--;
  }else if(keyCode == UP && yDim < lim){ //increase y dimension by one
    yDim++;
  }else if(key == 'r' || key == 'R'){ //reset dimensions back to 10x10
    xDim = 10;
    yDim = 10;
  }
}
