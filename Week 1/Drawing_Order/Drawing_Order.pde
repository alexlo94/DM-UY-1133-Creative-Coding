//Drawing_Order.pde
//Author: Alexandros Lotsos
/*Summary: The purpose of this sketch is to introduce you to the concept of execution and drawing order.
Simply put, a computer program will execute from top to bottom unless otherwise explicitly directed to do otherwise.*/

void setup(){
  //set canvas size and background color
  size(1350, 1200);
  background(0);
  rectMode(CENTER); //rectMode is a function that decides the point of reference to which rectangles are drawn. Here we set it to center for easier positioning.
  
  //notice that the order of my functions determines how things are drawn
  
  ellipse(250, 600, 400, 400);
  fill(255,0,0); //set fill color to red for visual clarity
  rect(250, 600, 100, 600);
  
  rect(950, 600, 600, 100);
  fill(255); //set fill back to white to draw the ellipse
  ellipse(950, 600, 400, 400);
  
  //processing draws on the canvas sequentially!
}

void draw(){
  
}
