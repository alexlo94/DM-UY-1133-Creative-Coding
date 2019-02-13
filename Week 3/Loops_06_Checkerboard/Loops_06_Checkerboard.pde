/*
Loops_06_Checkerboard.pde
Author: Alexandros Lotsos
Summary: An example showcasing the use of nested for loops to create a checkered board.
*/

//x and y dimensions of the checkerboard
float xDim = 10;
float yDim = 10;

//limit to the dimensions of the checkerboard
float lim = 100;

void setup(){
  size(1920, 1080);
  background(155);
}

void draw(){
  background(155); //refresh bg
  
  //compute xStep and yStep based on board dimensions
  float xStep = width/xDim;
  float yStep = height/yDim;
  
  //nest the for loops to create the complete grid.
  //notice the use of x++ and y++ rather than x += xStep and y += yStep. Why is it better to use one over the other right now?
  for(float x = 0; x < xDim; x++){
    for(float y = 0; y < yDim; y++){
      //check rectangle position in the grid and decide fill
      if(y%2 == 0 && x%2 == 0){ //even rows color even cells black
        fill(0);
      }else if(y%2 != 0 && x%2 != 0){ //odd rows color odd cells black
        fill(0);
      }else{ //everything else is colored white.
        fill(255);
      }
      
      ///draw the rectangle at the appropriate position.
      rect(x*xStep, y*yStep, xStep, yStep);
    }
  }
}

void keyPressed(){
  //using the arrow keys and the R key we will:
  if(keyCode == LEFT && xDim > 0){ //decrease x dimension by one
    xDim--;
  }else if(keyCode == RIGHT && xDim < lim){ //increase x dimension by one
    xDim++;
  }else if(keyCode == DOWN && yDim > 0){ //decrease y dimension by one
    yDim--;
  }else if(keyCode == UP && yDim < lim){ //increase y dimension by one
    yDim++;
  }else if(key == 'r' || key == 'R'){ //reset dimensions back to 10x10
    xDim = 10;
    yDim = 10;
  }
}
