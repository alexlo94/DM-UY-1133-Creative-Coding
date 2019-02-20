/*Colors_04_ColorSchemes.pde
Author: Alexandros Lotsos
Summary: A sketch that automatically generates different color schemes based on a starting color mapped to mouseX.
Use the left/right arrow keys to flip through different color schemes and move the mouse around the screen to see the results.
*/

color startColor; //starting color for all color schemes
int pointer = 0; //pointer to keep track of which color scheme we're generating
int numModes = 4; //number of color schemes in the sketch

void setup(){
  //set canvas parameters
  size(1920,1080);
  colorMode(HSB, 360, 100, 100); //set color mode to HSB with 360 on hue and 100 on sat/brightness
  rectMode(CENTER); //rectMode to center for easier positioning
  noStroke(); //noStroke for visual effect
  
  //text parameters
  textSize(72);
  textAlign(CENTER, CENTER);
}

void draw(){
  //refresh everything
  background(0);
  noStroke();
  
  //choose a starting color based on mouseX
  startColor = color(map(mouseX, 0, width, 0, 360), 100, 100);
  
  //call appropriate method based on pointer value
  if(pointer == 0){
    drawMonochromatic();
  }else if(pointer == 1){
    drawComplementary();
  }else if(pointer == 2){
    drawAnalogous();
  }else if(pointer == 3){
    drawTriadic();
  }else if(pointer == 4){
    drawTetradic();
  }
  
  //draw hue bar along the bottom
  for(int i = 0; i < width; i++){
    stroke(color(map(i, 0, width, 0, 360), 100, 100));
    line(i, 17*height/18, i, height);
  }
}


//function to generate analogous color schemes based on a starting color
//analogous colors are chosen by stepping 30 degrees above and below the original color in hue
//saturation and brightness remain the same throughout
void drawAnalogous(){
  //generate the analogous colors based on startColor
  color c1 = color((hue(startColor) + 30) % 360, 100, 100);
  color c2 = color((hue(startColor) - 30) % 360, 100, 100);
  
  //draw analogous 1
  fill(c2);
  rect(width/4, height/2, 500, 500);
  
  //draw original colored rectangle
  fill(startColor);
  rect(width/2, height/2, 500, 500);
  
  //draw analogous 2
  fill(c1);
  rect(3*width/4, height/2, 500, 500);
  
  //draw color scheme title
  fill(100, 0, 100); //white fill
  text("Analogous", 16*width/18, height/18);
}

//function to generate triadic color schemes based on a starting color
//Colors of the triad are chosen by separating the colorwheel into 3 equal parts of 120 degrees each
//saturation and brightness remain the same throughout
void drawTriadic(){
  //generate the other two members of the color triad based on startColor
  color c1 = color((hue(startColor) + 120) % 360, 100, 100);
  color c2 = color((hue(startColor) + 240) % 360, 100, 100);
  
  //draw c2
  fill(c2);
  rect(width/4, height/2, 500, 500);
  
  //draw original colored rectangle
  fill(startColor);
  rect(width/2, height/2, 500, 500);
  
  //draw c1
  fill(c1);
  rect(3*width/4, height/2, 500, 500);
  
  //draw color scheme title
  fill(100, 0, 100); //white fill
  text("Triadic", 16*width/18, height/18);
}

//function to generate tetradic color schemes based on a starting color
//Colors of the tetrad are chosen by separating the colorwheel into 4 equal parts of 90 degrees each
//saturation and brightness remain the same throughout
void drawTetradic(){  
  //compute square dimensions
  float dim = ((7*width/8) - (width/8)) / 4;
  
  //use a for loop to draw a tetradic scheme
  for(int i = 0; i < 4; i++){
    fill(color((hue(startColor) + i*90) % 360, 100, 100));
    rect((width/8 + i*dim) + dim/2, height/2, dim, dim);
  }
  
  //draw color scheme title
  fill(100, 0, 100); //white fill
  text("Tetradic", 16*width/18, height/18);
}

//function to generate a pair of complementary colors
//colors are chosen by separating the colorwheel into 2 equal parts of 180 degrees each
//saturation and brightness remain the same throughout
void drawComplementary(){
  //compute square dimensions
  float dim = ((3*width/4) - (width/4)) / 2;
  
  //draw the two rectangles
  for(int i = 0; i < 2; i++){
    fill(color((hue(startColor) + i*180) % 360, 100, 100));
    rect((width/4 + i*dim) + dim/2, height/2, dim, dim);
  }
  
  //draw color scheme title
  fill(100, 0, 100); //white fill
  text("Complementary", 15*width/18, height/18);
}


//function to generate a monochromatic color scheme
//gives one tint and one shade of a base color (tint is movement on saturation and shade is movement on brightness)
//hue remains constant throughout
void drawMonochromatic(){
  //generate the tint based on startColor
  color tint = color(hue(startColor), 50, 100);
  color shade = color(hue(startColor), 100, 50);
  
  //draw analogous 1
  fill(shade);
  rect(width/4, height/2, 500, 500);
  
  //draw original colored rectangle
  fill(startColor);
  rect(width/2, height/2, 500, 500);
  
  //draw analogous 2
  fill(tint);
  rect(3*width/4, height/2, 500, 500);
  
  //draw color scheme title
  fill(100, 0, 100); //white fill
  text("Monochromatic", 15*width/18, height/18);
  
}

void keyPressed(){
  if(keyCode == LEFT && pointer > 0){
    pointer--;
    println(pointer);
  }
  if(keyCode == RIGHT && pointer < numModes){
    pointer++;
    println(pointer);
  }
}
