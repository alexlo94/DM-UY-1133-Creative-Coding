/*Colors_03_RadialGradient.pde
Author: Alexandros Lotsos
Summary: Using the lerpcolor function to create a radial gradient. Adapted from the radial gradient example on the processing website.
Here the radial gradient is drawn by overlaying concentric circles and squares on top of eachother, changing the fill in each one.
Find more about it at: https://processing.org/examples/radialgradient.html
*/

void setup(){
  //set canvas parameters
  size(1920, 1080);
  background(0);
  noStroke();
  rectMode(CENTER);
  
  //HSB colormode for this one
  colorMode(HSB, 360, 100, 100);
  color c1 = color(random(360), 100, 100);
  color c2 = color((hue(c1) - 180) % 360, 100, 100); //generates a complementary color
  
  //rectangles
  for(float i = 600; i > 0; i--){
    fill(lerpColor(c1, c2, i/600));
    rect(2*width/8, height/2, i, i);
  }
  
  //ellipses
  for(float i = 600; i > 0; i--){
    fill(lerpColor(c1, c2, i/600));
    ellipse(6*width/8, height/2, i, i);
  }
  
  //linear gradient for reference
  float step = 1/width;
  println(step);
  for(float i = 0; i < width/2; i++){
    stroke(lerpColor(c1, c2, i/(width/2)));
    line(i + width/4, 17*height/18, i + width/4, height);
  }
}

void draw(){
}
