/*
Arrays_05_InputStore.pde
Source: https://processing.org/examples/storinginput.html
Summary: A sketch that uses an array to store mouseX and mouseY values and plays
them back to create a trailing effect on an ellipse positioned on the mouse.
*/

int trailSize = 60; //number of inputs stored in the array
float[] mx = new float[trailSize];
float[] my = new float[trailSize]; //arrays to store mouseX and mouseY values
int scale = 5;

void setup(){
  size(1920, 1080);
  noStroke();
  fill(255, 150); //alpha value to have slight transparency
}

void draw(){
  background(50); //refresh bg
  
  //Once each frame, store a mouseX, mouseY input at a position frameCount%trailSize
  int currFrame = frameCount % trailSize;
  mx[currFrame] = mouseX;
  my[currFrame] = mouseY;
  
  for(int i =0; i < trailSize; i++){
    int index = (currFrame + i)%trailSize;
    ellipse(mx[index], my[index], i*scale, i*scale);
  }
}
