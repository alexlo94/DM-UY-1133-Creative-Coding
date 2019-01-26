//Drawing_BasicColors.pde
//Author: Alexandros Lotsos
/*Summary: The purpose of this sketch is to show you how to tweak fill, stroke, and background colors with grayscale and RGBA values.
This is not the full suite of color capabilities that processing has to offer, rather it's just a place for you to get started.
The main takeaway is that background, fill, and stroke can have grayscale values from 0 to 255 and RGBA values ranging from 0 to 255 in each component.*/

void setup(){
  size(1350, 1200);
  
  noStroke(); //disable stroke so we can focus on fill for now
  
  //when fill has a single value it represents a grayscale value the default fill is 255, or white.
  ellipse(200, 200, 200, 200);
  fill(235);
  ellipse(500, 200, 200, 200);
  fill(185);
  ellipse(800, 200, 200, 200);
  fill(135);
  ellipse(1100, 200, 200, 200);
  
  //when fill has three values it represents an RGB color
  fill(220, 0, 0); //red
  ellipse(200, 500, 200, 200);
  fill(0, 220, 0); //green
  ellipse(500, 500, 200, 200);
  fill(0, 0, 220); //blue
  ellipse(800, 500, 200, 200);
  fill(220, 220, 0); //yellow
  ellipse(1100, 500, 200, 200);
  
  //when fill has four values it represents an RGBA color where A is transparency
  fill(220, 0, 220, 255);
  ellipse(200, 800, 200, 200);
  fill(220, 0, 220, 150);
  ellipse(500, 800, 200, 200);
  fill(220, 0, 220, 100);
  ellipse(800, 800, 200, 200);
  fill(220, 0, 220, 25);
  ellipse(1100, 800, 200, 200);
  
  //set fill to black so we can focus on the stroke next
  fill(0);
  
  //stroke and background also follow the the same principle (i.e. they can have grayscale, rgb, and rgba values)
  stroke(255); //a white stroke
  ellipse(200, 1050, 200, 200);
  stroke(255, 0, 255); //a purple stroke
  ellipse(500, 1050, 200, 200);
  stroke(255, 255, 0); //a yellow stroke
  ellipse(800, 1050, 200, 200);
  stroke(155, 62, 23, 42); //a transparent brown stroke
  ellipse(1100, 1050, 200, 200);
  
}

void draw(){
}
