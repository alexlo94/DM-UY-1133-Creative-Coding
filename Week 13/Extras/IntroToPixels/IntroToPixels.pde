//Working with pixels

//source image to work with
PImage source;

void setup(){
  size(600, 600);
  background(0);
  
  source = loadImage("TransparentHamster.png");
  
  image(source, 0, 0);
  
}

void draw(){
}
