/*Drawing_TrafficLight.pde
Author: Alexandros Lotsos
Summary: This is a sketch meant to apply what we've learned so far in week 1.
We are going to use basic shape and color statements to recreate a traffic light ahead roadsign as seen here:
https://i.ebayimg.com/images/g/BccAAOSwPcVV03U2/s-l300.jpg
*/

void setup(){
  size(1920, 1080);
  background(255); //white background for contrast
  
  //quad for background
  stroke(0);
  strokeWeight(25);
  fill(255, 255, 0);
  quad(960, 140, 1360, 540, 960, 940, 560, 540); //with 960,540 as reference
  
  //background of traffic light
  rectMode(CENTER);
  fill(0);
  strokeWeight(5);
  rect(960, 540, 150, 500);
  
  //the three ellipses of the traffic lights
  noStroke();
  fill(255, 200, 0); //orange fill
  ellipse(960, 540, 125, 125);
  fill(0, 255, 0); //green fill
  ellipse(960, 690, 125, 125); 
  fill(255, 0, 0);
  ellipse(960, 390, 125, 125);
  
  
}

void draw(){
}
