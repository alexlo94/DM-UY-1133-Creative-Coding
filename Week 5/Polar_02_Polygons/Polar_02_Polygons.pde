/*
Polar_02_Polygons.pde
Author: Alexandros Lotsos
Summary: A sketch that shows how to use polar coordinates to draw convex polygons of grade N.
Use the arrow keys to vary the grade
*/

float rad = 400; //radius of our polygon
int grade = 3; //the grade of our polygon

void setup(){
  size(1920, 1080);
  background(0);
  noFill();
  stroke(255);
}

void draw(){
  background(0);
  float angleStep = radians(360/grade); //the measure of each angle of the polygon based on the grade
  
  pushMatrix();
  translate(width/2, height/2); //translate to middle of the canvas
  beginShape();
  for(float t = 0; t < grade; t++){ 
    //notice how the x and y coordinates of each point are calculated
    float x = rad * cos(t*angleStep - PI/2);
    float y = rad * sin(t*angleStep - PI/2);
    vertex(x, y);
  }
  endShape(CLOSE);
  popMatrix();
}

void keyPressed(){
  if(keyCode == LEFT && grade > 1){
    grade--;
  }
  if(keyCode == RIGHT && grade < 20){
    grade++;
  }
}
