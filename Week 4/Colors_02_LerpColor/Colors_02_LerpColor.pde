/*Colors_02_LerpColor.pde
Author: Alexandros Lotsos
Summary: A demo for the lerpColor function. Shows how lerpColor yields different colors in different color modes.
Find more about it at: https://processing.org/reference/lerpColor_.html
*/

void setup(){
  size(1920, 1080);
  background(0);
  noFill(); //we'll be using lines so noFill here
  
  //lerpColor demo with RGB values from red to blue
  //intermediate of purple because it's a straight line in the RGB color space
  color c1 = color(255, 0, 0); //color 1 is red
  color c2 = color(0, 0, 255); //color 2 is blue
  //draw lines in succession to showcase lerp
  for(float i = 0; i < width; i++){
    stroke(lerpColor(c1, c2, i/width));
    line(i, height/8, i, 2*height/8);
  }
  
  //lerpColor demo with HSB values from red to blue
  //notice how lerpcolor changes with colorMode, we now have all the intermediate hues between red and blue
  colorMode(HSB, 360, 100, 100);
  c1 = color(0, 100, 100); //hsb starts from red
  c2 = color(250, 100, 100); //~270 is about blue
  //draw lines in succession to showcase lerp
  for(float i = 0; i < width; i++){
    stroke(lerpColor(c1, c2, i/width));
    line(i, 2*height/8, i, 3*height/8);
  }
  
  //Try this again with random colors: RGB
  colorMode(RGB, 255);
  c1 = color(random(255), random(255), random(255));
  c2 = color(random(255), random(255), random(255));
  for(float i = 0; i < width; i++){
    stroke(lerpColor(c1, c2, i/width));
    line(i, 5*height/8, i, 6*height/8);
  }
  
  //Try this again with random colors: HSB
  //notice the use of hue(), saturation(), and brightness() to extract color data from an RGB color
  colorMode(HSB, 360, 100, 100);
  color c1_hsb = color(hue(c1), saturation(c1), brightness(c1));
  color c2_hsb = color(hue(c2), saturation(c2), brightness(c2));
  for(float i = 0; i < width; i++){
    stroke(lerpColor(c1_hsb, c2_hsb, i/width));
    line(i, 6*height/8, i, 7*height/8);
  }
}
