//Drawing_Stroke.pde
//Author: Alexandros Lotsos
/*Summary: The purpose of this sketch is to introduce you to the different stroke settings that processing offers.*/

void setup(){
  //set canvas size and background color
  size(1350, 1200);
  background(100);
  
  /*The strokeWeight function allows you to set the stroke weight in pixels. The default stroke weight is 1 pixel and noStroke() will make the stroke transparent.*/
  ellipse(300, 200, 200, 200);
  strokeWeight(5);
  ellipse(550, 200, 200, 200);
  strokeWeight(10);
  ellipse(800, 200, 200, 200);
  strokeWeight(25);
  ellipse(1050, 200, 200, 200);
  
  /*Using the strokeCap function you can change how lines are drawn at their endpoints. By default they are drawn in a rounded manner.*/
  stroke(0); //set the stroke color back to black
  strokeWeight(50); //set weight to something noticable for the example
  line(300, 450, 300, 750);
  strokeCap(SQUARE);
  line(550, 450, 550, 750);
  strokeCap(PROJECT);
  line(800, 450, 800, 750);
  strokeCap(ROUND);
  line(1050, 450, 1050, 750);
  
  /*The strokeJoin function changes the way lines are joined together (i.e. how corners of shapes look). By default they have pointed corners.*/
  strokeWeight(24);
  rectMode(CENTER); //set rectMode to center for easy positioning
  rect(300, 1000, 200, 200);
  strokeJoin(ROUND);
  rect(550, 1000, 200, 200);
  strokeJoin(BEVEL);
  rect(800, 1000, 200, 200);
  strokeJoin(MITER);
  rect(1050, 1000, 200, 200);
  
  
}

void draw(){
}
