//Intro to images

//Processing class for images
PImage img;
int imgX = 100;
int imgY = 150;
int imgStep = 5;

void setup(){
  //note the smaller canvas size
  size(1000, 1000);
  background(0);
  
  //load the image, takes filename as an argument;
  img = loadImage("TransparentHamster.png");
  
  //there's imageMode to change point of reference
  imageMode(CENTER);
  
}

void draw(){
  background(0);
  
  //display the image on the canvas
  image(img, imgX, imgY, 80, 80); //symtax: image(varName, x, y, width, height);
  
  imgX += imgStep;
  imgY += imgStep;
  
  //check for collision
  if(imgX > width || imgX < 0){
    imgStep *=-1;
  }
  if(imgY > height || imgY < 0){
    imgStep *=-1;
  }
  
}
