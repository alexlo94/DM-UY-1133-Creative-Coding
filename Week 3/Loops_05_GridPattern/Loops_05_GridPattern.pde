/*
Loops_05_GridPattern.pde
Author: Alexandros Lotsos
Summary: An example showcasing the use of multiple loops to create a grid pattern using lines.
*/

float num_linesX = 10; //number of vertical lines
float num_linesY = 10; //number of horizontal lines
float lim = 100; //limit on the number of lines on each dimension

void setup(){
  size(1920,1080);
  background(0);
  stroke(255);
}

void draw(){
  background(0);
  
  //compute xStep and yStep based on num_linesx,y
  float xStep = width/num_linesX;
  float yStep = height/num_linesY;
  
  //draw the horizontal lines
  for(float x = 0; x < width; x += xStep){
    line(x, 0, x, height);
  }
  //draw the vertical lines
  for(float y = 0; y < height; y += yStep){
    line(0, y, width, y);
  } 
}

//check for keyboard input. left and right arrows tweak the X dimension while up and down arrows tweak the Y dimension of the grid.
//the R key will reset the grid to its initial dimensions of 10x10
void keyPressed(){
  if(keyCode == LEFT && num_linesX > 0){
    num_linesX--;
  }else if(keyCode == RIGHT && num_linesX < lim){
    num_linesX++;
  }else if(keyCode == DOWN && num_linesY > 0){
    num_linesY--;
  }else if(keyCode == UP && num_linesY < lim){
    num_linesY++;
  }else if(key == 'r' || key == 'R'){
    num_linesX = 10;
    num_linesY = 10;
  }
}
