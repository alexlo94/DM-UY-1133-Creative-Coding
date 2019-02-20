//lerp parameters
float currX = 0.0; //x position of the rectangle
float lerpX = 0.0;
float xStep = 0.009;
float x1;
float x2;

//lerpColor parameters
color c1;
color c2;

void setup(){
  //set canvas and color parameters
  size(1920, 1080);
  background(155);
  noStroke();
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  
  //pick the two positions for the lerp
  x1 = 49;
  x2 = 187;
  
  //choose two complementary colors
  c1 = color(random(360), 80, 100);
  c2 = color((hue(c1) + 180)%360, 80, 100);
}

void draw(){
  background(0); //refresh background
  
  //set fill for the background
  fill(lerpColor(c1, c2, currX/(x2 - x1)));
  
  //draw the background
  rect(width/2, height/2, width, height);
  
  //set the fill for the rectangle
  fill(lerpColor(c2, c1, currX/(x2 - x1)));
  
  //draw the rectangle
  ellipse(currX, height/2, 200, 200);
  
  //check if x is at the boundary
  if(currX < x1 || currX > x2){
    xStep *= -1;
  }
  
  //increment x
  lerpX += xStep; 
  currX = lerp(x1, x2, lerpX);
}
