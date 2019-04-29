/*
Pad.pde
Author: Alexandros Lotsos
Summary: A class for pad objects that play a sound when clicked.
*/

class Pad{
  /*fields*/
  int x = 0;
  int y = 0;
  //side of the square
  int side = 50;
  //the color of the square
  color c = color(255);
  //sound to play on click
  SoundFile sound;
  
  /*constructors*/
  //default constructor specifying only the sound on click
  public Pad(SoundFile sound){
    this.sound = sound;
  }
  //deluxe constructor that specifies everything
  public Pad(int x, int y, int side, color c, SoundFile sound){
    this.x = x;
    this.y = y;
    this.side = side;
    this.c = c;
    this.sound = sound;
  }
  
  /*methods*/
  //show method
  void show(){
    noStroke();
    fill(this.c);
    
    rect(this.x, this.y, this.side, this.side);
  }
  
  void clicked(){
    if(!this.sound.isPlaying()){
      this.sound.play();
    }
  }
}
