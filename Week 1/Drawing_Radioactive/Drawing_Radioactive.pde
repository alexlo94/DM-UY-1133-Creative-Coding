/*Drawing_Radioactive.pde
Author: Alexandros Lotsos
Summary: This is a sketch meant to apply what we've learned so far in week 1.
We are going to use basic shape and color statements to recreate the radioactive symbol found here:
https://images-na.ssl-images-amazon.com/images/I/41lf-jWtOUL.jpg
*/

void setup(){
  size(1920, 1080);
  background(255); //white background for contrast
  
  //begin drawing
  fill(255,255,0); //yellow fill
  stroke(0); //black stroke
  strokeWeight(40);
  
  ellipse(960, 540, 800, 800); //background of the symbol
  
  fill(0);
  noStroke();
  
  //3 central petals
  arc(960, 540, 700, 700, radians(60), radians(120));
  arc(960, 540, 700, 700, radians(180), radians(240));
  arc(960, 540, 700, 700, radians(300), radians(360));
  
  stroke(255, 255, 0);
  strokeWeight(40);
  
  //central ellipse
  ellipse(960, 540, 200, 200);
}

void draw(){
}
