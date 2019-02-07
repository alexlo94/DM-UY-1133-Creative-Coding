/*Variables_ConcentricCircles.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to showcase how variables can be used to create concentric circles.
*/

void setup(){
  int rad = 1000; //baseline radius
  int alpha = 25; //baseline alpha value
  
  size(1920, 1080);
  background(0, 255, 179);
  noStroke();
  
  //progressively increase the alpha values and decrease the radius
  fill(255, 0, 0, alpha);
  ellipse(width/2, height/2, rad, rad);
  fill(255, 0, 0, alpha*2);
  ellipse(width/2, height/2, rad/2, rad/2);
  fill(255, 0, 0, alpha*3);
  ellipse(width/2, height/2, rad/4, rad/4);
  fill(255, 0, 0, alpha*4);
  ellipse(width/2, height/2, rad/8, rad/8);
}
