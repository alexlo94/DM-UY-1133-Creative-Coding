/*Colors_01_HSBDemo.pde
Author: Alexandros Lotsos
Summary: A simple demo showcasing the different levels of hue saturation and brightness, as well as how to use the colorMode in processing
*/

/*
  So far we've only been using grayscale and RGBA for our colors. Unfortunately, moving around colors in RGB space is fairly unintuitive and
  it's hard enough to come up with appropriate colors for your sketches. HSB, a color mode based on Hue, Saturation and Brightness, changes this
  and makes changing colors (in my opinion) a lot more intuitive. Below is a demo on how to switch your colors to HSB, as well as a visual to situate you.
*/

void setup(){
  //gray background for effect
  size(1920, 1080);
  background(155);
  noFill(); //we're going to be drawing lines so noFill here
  
  //colorMode let's you switch between RGBA and HSB, use it to specify the color mode you want as well as the maximum values of each component
  colorMode(HSB, 360, 100, 100); //syntax: colorMode(MODE, max1, max2, max3); if you specify one number then that max will be applied to all components
  
  //hue is the first component in HSB and basically just specifies your color via a coordinate on the color wheel (hence the max of 360)
  //let's draw all possible Hue values with max brightness and saturation across the screen by mapping x-coordinates to values from 0 to 360
  for(int i = 0; i < width; i++){
    stroke(map(i, 0, width, 0, 360), 100, 100); //notice how I'm specifying values from 0 to 360 for hue and setting brightness and saturation to 100
    line(i, height/16, i, 5*height/16);
  }
  
  //saturation is the second component and specifies the degree of white present in the color.
  //A value of 0 will be a white for any color while a value of 100 will be the hue itself
  //lets set hue to red and brightness to maximum and see what happens when we vary saturation from 0 to 100
  for(int i = 0; i < width; i++){
    stroke(360, map(i, 0, width, 0, 100), 100);
    line(i, 6*height/16, i, 10*height/16);
  }
  
  //brightness is the third component and specifies the degree of black present in the color.
  //A value of 0 will be a black for any color while a value of 100 will be the hue itself
  //lets set hue to red and saturation to maximum and see what happens when we vary brightness from 0 to 100
  for(int i = 0; i < width; i++){
    stroke(360, 100, map(i, 0, width, 0, 100));
    line(i, 11*height/16, i, 15*height/16);
  }
}
