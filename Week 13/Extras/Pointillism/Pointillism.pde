//Pointillism

//load our image
PImage source;

void setup(){
  size(800, 800);
  background(255);
  
  source = loadImage("TransparentHamster.png");
  noStroke();
}

void draw(){
  //get a random x, y coord
  int x = int(random(0, source.width));
  int y = int(random(0, source.height));
  
  //get the color of that pixel
  color c = source.pixels[x + y*source.width];
  
  //translate to our canvas dimensions
  x = int(map(x, 0, source.width, 0, width));
  y = int(map(y, 0, source.height, 0, height));
  
  fill(c);
  ellipse(x, y, 10, 10);
}
